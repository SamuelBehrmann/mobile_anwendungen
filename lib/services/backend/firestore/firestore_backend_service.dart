// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/services/backend/backend_service.dart';
import 'package:medi_support/ui/screens/chat/services/chat_backend_service.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';
import 'package:medi_support/ui/screens/post/services/post_backend_service.dart';
import 'package:uuid/uuid.dart';

part 'firestore_backend_service.freezed.dart';
part 'firestore_backend_service.g.dart';

class FirestoreBackendService extends BackendServiceAggregator {
  final FirebaseFirestore firestore;

  FirestoreBackendService(
    this.firestore,
  );

  @override
  Future<void> send({required String title, required String body}) async {
    await firestore.collection('posts').add(<String, String>{
      'title': title,
      'body': body,
    });
  }

  /// Fetches all chat conversations for a given user.
  ///
  /// This function retrieves all chat IDs associated with the user, iterates
  /// through each chat, and constructs a list of `ChatsBackendServiceChat`
  /// objects containing details about the other person in the chat and the
  /// last message sent in the chat.
  ///
  /// [userId] The unique identifier of the user whose chats are to be retrieved.
  ///
  /// Returns a list of `ChatsBackendServiceChat` objects, each representing a chat.
  @override
  Future<List<ChatsBackendServiceChat>> getAllChats(String userId) async {
    DocumentSnapshot<Map<String, dynamic>> userDocSnapshot =
        await firestore.collection('user').doc(userId).get();
    List<dynamic> chatIds =
        userDocSnapshot.data()?['chat_ids'] as List<dynamic>? ?? <dynamic>[];

    List<ChatsBackendServiceChat> chats = <ChatsBackendServiceChat>[];
    for (int i = 0; i < chatIds.length; i++) {
      dynamic chatId = chatIds[i];
      DocumentSnapshot<Map<String, dynamic>> chatDocSnapshot =
          await firestore.collection('chats').doc(chatId as String).get();
      if (!chatDocSnapshot.exists) continue;

      Map<String, dynamic> personsMap =
          chatDocSnapshot.data()?['persons'] as Map<String, dynamic>? ??
              <String, dynamic>{};

      Map<String, dynamic> otherPerson = <String, dynamic>{};
      for (MapEntry<String, dynamic> entry in personsMap.entries) {
        Map<String, dynamic> personDetails =
            entry.value as Map<String, dynamic>? ?? <String, dynamic>{};
        if (entry.key != userId) {
          otherPerson = personDetails;
          break;
        }
      }

      String otherPersonName = otherPerson['name'] as String? ?? 'Unknown';
      String? profilePicturePath = otherPerson['imageUrl'] as String?;

      // Fetch the last message from the 'messages' subcollection
      String lastMessage = 'No messages yet';
      DocumentSnapshot<Map<String, dynamic>> chatDocument =
          await firestore.collection('chats').doc(chatId).get();

      if (chatDocument.exists && chatDocument.data()!.containsKey('messages')) {
        List<dynamic> messages =
            chatDocument.data()!['messages'] as List<dynamic>;
        if (messages.isNotEmpty) {
          Map<String, dynamic> lastMessageMap =
              messages.last as Map<String, dynamic>;
          if (lastMessageMap.containsKey('content')) {
            lastMessage =
                lastMessageMap['content'] as String? ?? 'No messages yet';
          }
        }
      }

      // Constructing ChatsBackendServiceChat Object with the other person's details and the last message
      ChatsBackendServiceChat chat = ChatsBackendServiceChat(
        id: chatId,
        name: otherPersonName,
        message: lastMessage,
        profilePicturePath: profilePicturePath,
      );
      chats.add(chat);
    }
    return chats;
  }

  @override
  Stream<PostBackendServicePost> getPostStream({
    required final String postId,
  }) =>
      firestore.collection('posts').doc(postId).snapshots().map(
        (DocumentSnapshot<Map<String, dynamic>> doc) {
          Map<String, dynamic> data = doc.data()!;
          data['id'] = doc.id;
          return FirestoreBackendServicePost.fromJson(data);
        },
      ).map(
        (FirestoreBackendServicePost post) => PostBackendServicePost(
          id: post.id,
          title: post.title,
          content: post.content,
          author: PostBackendServiceUser(
            id: post.author.id,
            name: post.author.name,
            avatar: post.author.avatar,
            titles: post.author.titles,
          ),
          replies:
              _mapFirestoreBackendServiceMessageToPostBackendServiceMessage(
            post.replies,
          ),
        ),
      );

  @override
  Future<void> submitReply({
    required String postId,
    required String message,
    required String replyToMessageId,
  }) async {
    final DocumentReference<Map<String, dynamic>> postRefference =
        firestore.collection('posts').doc(postId);

    final Map<String, dynamic>? post = (await postRefference.get()).data();

    if (post == null) {
      return Future<void>.error('Post not found');
    }
    post["id"] = postId;

    // TODO: fetch from auth
    final FirestoreBackendServiceUser currentUser = FirestoreBackendServiceUser(
      id: 'currentUserId',
      name: 'currentUserName',
      avatar: Uri.parse(
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=3276&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      titles: <String>['Title 1', 'Title 2'],
    );

    final FirestoreBackendServiceMessage newReply =
        FirestoreBackendServiceMessage(
      id: const Uuid().v4(),
      message: message,
      author: currentUser,
      replies: <FirestoreBackendServiceMessage>[],
    );

    FirestoreBackendServicePost typedPost =
        FirestoreBackendServicePost.fromJson(post);

    final FirestoreBackendServicePost updatedPost =
        typedPost.id == replyToMessageId
            ? typedPost.copyWith(
                replies: <FirestoreBackendServiceMessage>[
                  ...typedPost.replies,
                  newReply,
                ],
              )
            : typedPost.copyWith(
                replies: _addReplyToMessage(
                  replies: typedPost.replies,
                  targetMessageId: replyToMessageId,
                  newReply: newReply,
                ),
              );

    return postRefference.update(updatedPost.toJson());
  }

  List<FirestoreBackendServiceMessage> _addReplyToMessage({
    required List<FirestoreBackendServiceMessage> replies,
    required String targetMessageId,
    required FirestoreBackendServiceMessage newReply,
  }) =>
      replies
          .map(
            (FirestoreBackendServiceMessage message) =>
                message.id == targetMessageId
                    ? message.copyWith(
                        replies: <FirestoreBackendServiceMessage>[
                          ...message.replies,
                          newReply,
                        ],
                      )
                    : message.copyWith(
                        replies: _addReplyToMessage(
                          replies: message.replies,
                          targetMessageId: targetMessageId,
                          newReply: newReply,
                        ),
                      ),
          )
          .toList();

  List<PostBackendServiceMessage>
      _mapFirestoreBackendServiceMessageToPostBackendServiceMessage(
    List<FirestoreBackendServiceMessage> messages,
  ) =>
          messages
              .map(
                (FirestoreBackendServiceMessage message) =>
                    PostBackendServiceMessage(
                  id: message.id,
                  message: message.message,
                  author: PostBackendServiceUser(
                    id: message.author.id,
                    name: message.author.name,
                    avatar: message.author.avatar,
                    titles: message.author.titles,
                  ),
                  replies:
                      _mapFirestoreBackendServiceMessageToPostBackendServiceMessage(
                    message.replies,
                  ),
                ),
              )
              .toList();

  @override
  Stream<ChatBackendServiceChat> fetchChatData(String chatId) =>
      firestore.collection('chats').doc(chatId).snapshots().map(
        (DocumentSnapshot<Map<String, dynamic>> doc) {
          Map<String, dynamic> chatData = doc.data()!;
          List<ChatBackendServiceMessage> messages =
              mapFirestoreBackendServiceMessageToChatBackendServiceMessage(
            chatData['messages'] as List<dynamic>,
          );

          String currentUserId = 'currentUserId';
          List<ChatBackendServicePerson> persons = <ChatBackendServicePerson>[];
          for (MapEntry<String, dynamic> entry
              in (chatData['persons'] as Map<String, dynamic>).entries) {
            String personId = entry.key;
            if (personId != currentUserId) {
              ChatBackendServicePerson person = ChatBackendServicePerson(
                id: personId,
                name: entry.value['name'] as String,
                imageUrl: entry.value['imageUrl'] as String,
              );
              persons.add(person);
            }
          }

          ChatBackendServiceChat chat = ChatBackendServiceChat(
            chatId: chatId,
            chatPartner: persons.last,
            messages: messages,
          );
          return chat;
        },
      );

  List<ChatBackendServiceMessage>
      mapFirestoreBackendServiceMessageToChatBackendServiceMessage(
    List<dynamic> messages,
  ) =>
          messages.mapIndexed((int index, message) {
            Map<String, dynamic> messageData = message as Map<String, dynamic>;
            messageData['id'] = index.toString();
            return ChatBackendServiceMessage(
              messageId: messageData['id'] as String,
              content: messageData['content'] as String,
              authorId: messageData['personId'] as String,
            );
          }).toList();
}

// convenience classes to work with Firestore data
@freezed
class FirestoreBackendServicePost with _$FirestoreBackendServicePost {
  const FirestoreBackendServicePost._();
  const factory FirestoreBackendServicePost({
    required final String id,
    required final String title,
    @JsonKey(name: 'body') required final String content,
    required final FirestoreBackendServiceUser author,
    required final List<FirestoreBackendServiceMessage> replies,
  }) = _FirestoreBackendServicePost;

  factory FirestoreBackendServicePost.fromJson(Map<String, dynamic> json) =>
      _$FirestoreBackendServicePostFromJson(json);
}

@freezed
class FirestoreBackendServiceUser with _$FirestoreBackendServiceUser {
  const FirestoreBackendServiceUser._();
  const factory FirestoreBackendServiceUser({
    required final String id,
    required final String name,
    required final Uri avatar,
    required final List<String> titles,
  }) = _FirestoreBackendServiceUser;

  factory FirestoreBackendServiceUser.fromJson(Map<String, dynamic> json) =>
      _$FirestoreBackendServiceUserFromJson(json);
}

@freezed
class FirestoreBackendServiceMessage with _$FirestoreBackendServiceMessage {
  const FirestoreBackendServiceMessage._();
  const factory FirestoreBackendServiceMessage({
    required final String id,
    required final String message,
    required final FirestoreBackendServiceUser author,
    required final List<FirestoreBackendServiceMessage> replies,
  }) = _FirestoreBackendServiceMessage;

  factory FirestoreBackendServiceMessage.fromJson(Map<String, dynamic> json) =>
      _$FirestoreBackendServiceMessageFromJson(json);
}
