// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/services/backend/backend_service.dart';
import 'package:medi_support/ui/screens/chat/services/chat_backend_service.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';
import 'package:medi_support/ui/screens/home/services/home_backend_service.dart';
import 'package:medi_support/ui/screens/post/services/post_backend_service.dart';
import 'package:medi_support/ui/screens/profile/services/profile_backend_service.dart';
import 'package:medi_support/ui/screens/search/services/search_backend_service.dart';
import 'package:uuid/uuid.dart';

part 'firestore_backend_service.freezed.dart';
part 'firestore_backend_service.g.dart';

class FirestoreBackendService extends BackendServiceAggregator {
  static const String _postsCollection = 'posts';
  static const String _chatsCollection = 'chats';
  static const String _usersCollection = 'users';

  final FirebaseFirestore firestore;

  FirestoreBackendService(
    this.firestore,
  );

  @override
  Future<void> createPost({
    required String title,
    required String content,
  }) async {
    final QueryDocumentSnapshot<Map<String, dynamic>> currentUser =
        (await firestore.collection(_usersCollection).limit(1).get())
            .docs
            .first;

    await firestore.collection(_postsCollection).add(<String, dynamic>{
      'title': title,
      'content': content,
      'createdAt': DateTime.now().toUtc().toIso8601String(),
      'replies': <String, dynamic>{},
      'authorId': currentUser.id,
    });
  }

  @override
  Stream<List<HomeBackendServicePost>> getHomePostsStream({
    required final int maxCount,
  }) =>
      firestore
          .collection("posts")
          .orderBy("createdAt", descending: true)
          .limit(maxCount)
          .snapshots()
          .asyncMap(
            (QuerySnapshot<Map<String, dynamic>> collection) async =>
                Stream<Map<String, dynamic>>.fromIterable(
              collection.docs
                  .map(
                    (QueryDocumentSnapshot<Map<String, dynamic>> element) =>
                        element.data()..["postId"] = element.id,
                  )
                  .where(
                    (Map<String, dynamic> element) =>
                        element["title"] != null && element["content"] != null,
                  ),
            ).asyncMap(
              (Map<String, dynamic> element) async {
                final DocumentSnapshot<Map<String, dynamic>> postAuthor =
                    await firestore
                        .collection(_usersCollection)
                        .doc(element["authorId"] as String)
                        .get();

                return HomeBackendServicePost(
                  user: HomeBackendServiceUser(
                    userId: postAuthor.id,
                    userName: postAuthor["name"] as String,
                    userAvatarUrl: postAuthor["imageUrl"] as String,
                    titles: (postAuthor["titles"] as List<dynamic>).cast(),
                  ),
                  postId: element["postId"]! as String,
                  title: element["title"]! as String,
                  body: element["content"]! as String,
                );
              },
            ).toList(),
          );

  @override
  Future<List<ChatsBackendServiceChat>> getAllChats() async {
    final String currentUserId =
        (await firestore.collection(_usersCollection).limit(1).get())
            .docs
            .first
            .id;

    return firestore
        .collection(_chatsCollection)
        .where(
          'participants',
          arrayContains: currentUserId,
        )
        .get()
        .then(
          (QuerySnapshot<Map<String, dynamic>> snapshot) =>
              Stream<QueryDocumentSnapshot<Map<String, dynamic>>>.fromIterable(
            snapshot.docs,
          ).asyncMap((QueryDocumentSnapshot<Map<String, dynamic>> doc) async {
            Map<String, dynamic> message =
                (doc['messages'] as List<dynamic>).last as Map<String, dynamic>;

            String userId = (doc['participants'] as List<dynamic>)
                .cast<String>()
                .firstWhere((String id) => id != currentUserId);

            final Map<String, dynamic>? user =
                (await firestore.collection(_usersCollection).doc(userId).get())
                    .data();

            return ChatsBackendServiceChat(
              id: doc.id,
              name: user!['name'] as String,
              message: message['content'] as String,
              profilePicturePath: user['imageUrl'] as String?,
            );
          }).toList(),
        );
  }

  @override
  Stream<PostBackendServicePost> getPostStream({
    required final String postId,
  }) =>
      firestore.collection(_postsCollection).doc(postId).snapshots().asyncMap(
        (DocumentSnapshot<Map<String, dynamic>> doc) async {
          Map<String, dynamic> data = doc.data()!;
          data['id'] = doc.id;
          final Map<String, dynamic>? postAuthor = (await firestore
                  .collection(_usersCollection)
                  .doc(data['authorId'] as String)
                  .get())
              .data();

          final Map<String, FirestoreBackendServiceMessageWithAuthor> replies =
              await _fetchMessageAuthorRecursive(
            doc['replies'] as Map<String, dynamic>,
          );

          return PostBackendServicePost(
            id: data['id'] as String,
            title: data['title'] as String,
            content: data['content'] as String,
            author: PostBackendServiceUser(
              id: data['authorId'] as String,
              name: postAuthor?['name'] as String,
              avatar: Uri.parse(postAuthor?['imageUrl'] as String),
              titles: (postAuthor?['titles'] as List<dynamic>).cast(),
            ),
            replies:
                _mapFirestoreBackendServiceMessageToPostBackendServiceMessage(
              replies.values.toList(),
            ),
          );
        },
      );

  Future<Map<String, FirestoreBackendServiceMessageWithAuthor>>
      _fetchMessageAuthorRecursive(
    Map<String, dynamic> messages,
  ) async =>
          Map<String, FirestoreBackendServiceMessageWithAuthor>.fromEntries(
            await Stream<MapEntry<String, dynamic>>.fromIterable(
              messages.entries,
            )
                .map(
              (MapEntry<String, dynamic> entry) =>
                  MapEntry<String, Map<String, dynamic>>(
                entry.key,
                entry.value as Map<String, dynamic>,
              ),
            )
                .asyncMap(
                    (MapEntry<String, Map<String, dynamic>> message) async {
              Map<String, dynamic>? userData = (await firestore
                      .collection('users')
                      .doc(message.value['authorId'] as String)
                      .get())
                  .data();

              userData!['id'] = message.value['authorId'];

              return MapEntry<String, FirestoreBackendServiceMessageWithAuthor>(
                message.key,
                FirestoreBackendServiceMessageWithAuthor(
                  id: message.key,
                  content: message.value['content'] as String,
                  author: FirestoreBackendServiceUser(
                    id: message.value['authorId'] as String,
                    name: userData['name'] as String,
                    imageUrl: Uri.parse(userData['imageUrl'] as String),
                    titles: (userData['titles'] as List<dynamic>).cast(),
                  ),
                  replies: (await _fetchMessageAuthorRecursive(
                    message.value['replies'] as Map<String, dynamic>,
                  )),
                ),
              );
            }).toList(),
          );
  @override
  Future<void> submitReply({
    required String postId,
    required String message,
    required String replyToMessageId,
  }) async {
    final QueryDocumentSnapshot<Map<String, dynamic>> user =
        (await firestore.collection(_usersCollection).limit(1).get())
            .docs
            .first;

    final DocumentReference<Map<String, dynamic>> postRefference =
        firestore.collection(_postsCollection).doc(postId);

    final Map<String, dynamic>? postData = (await postRefference.get()).data();

    if (postData == null) {
      return Future<void>.error('Post not found');
    }

    postData["id"] = postId;

    final FirestoreBackendServiceMessageRaw newReply =
        FirestoreBackendServiceMessageRaw(
      id: const Uuid().v4(),
      content: message,
      authorId: user.id,
      replies: <String, FirestoreBackendServiceMessageRaw>{},
    );

    FirestoreBackendServicePost typedPost = FirestoreBackendServicePost(
      id: postId,
      title: postData["title"] as String,
      content: postData["content"] as String,
      replies: _mapToFirestoreBackendServiceMessageRawRecursive(
        (postData["replies"] as Map<String, dynamic>).cast(),
      ),
      authorId: postData["authorId"] as String,
    );

    final FirestoreBackendServicePost updatedPost =
        typedPost.id == replyToMessageId
            ? typedPost.copyWith(
                replies: <String, FirestoreBackendServiceMessageRaw>{
                  ...typedPost.replies,
                  const Uuid().v4(): newReply,
                },
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

  @override
  Future<void> editUser(ProfileBackendServiceUser user) =>
      firestore.collection(_usersCollection).doc(user.id).update(
        <String, dynamic>{
          'name': user.name,
          'email': user.email,
          'password': user.password,
          'imageUrl': user.imageUrl?.toString(),
          'phone': user.phoneNumber,
          'description': user.description,
        },
      );

  @override
  Future<ProfileBackendServiceUser> getUser() async =>
      firestore.collection(_usersCollection).get().then(
        (QuerySnapshot<Map<String, dynamic>> value) async {
          final QueryDocumentSnapshot<Map<String, dynamic>> user =
              value.docs.first;

          final String? imageUrl = user['imageUrl'] as String?;

          return ProfileBackendServiceUser(
            id: user.id,
            name: user['name'] as String,
            email: user['email'] as String?,
            password: user['password'] as String,
            imageUrl: imageUrl != null ? Uri.parse(imageUrl) : null,
            phoneNumber: user['phone'] as String?,
            description: user['description'] as String?,
          );
        },
      );

  Map<String, FirestoreBackendServiceMessageRaw> _addReplyToMessage({
    required Map<String, FirestoreBackendServiceMessageRaw> replies,
    required String targetMessageId,
    required FirestoreBackendServiceMessageRaw newReply,
  }) =>
      replies.map(
        (String id, FirestoreBackendServiceMessageRaw message) =>
            MapEntry<String, FirestoreBackendServiceMessageRaw>(
          id,
          message.id == targetMessageId
              ? message.copyWith(
                  replies: <String, FirestoreBackendServiceMessageRaw>{
                    ...message.replies,
                    const Uuid().v4(): newReply,
                  },
                )
              : message.copyWith(
                  replies: _addReplyToMessage(
                    replies: message.replies,
                    targetMessageId: targetMessageId,
                    newReply: newReply,
                  ),
                ),
        ),
      );

  List<PostBackendServiceMessage>
      _mapFirestoreBackendServiceMessageToPostBackendServiceMessage(
    List<FirestoreBackendServiceMessageWithAuthor> messages,
  ) =>
          messages
              .map(
                (FirestoreBackendServiceMessageWithAuthor message) =>
                    PostBackendServiceMessage(
                  id: message.id,
                  message: message.content,
                  author: PostBackendServiceUser(
                    id: message.author.id,
                    name: message.author.name,
                    avatar: message.author.imageUrl,
                    titles: message.author.titles,
                  ),
                  replies:
                      _mapFirestoreBackendServiceMessageToPostBackendServiceMessage(
                    message.replies.values.toList(),
                  ),
                ),
              )
              .toList();

  Map<String, FirestoreBackendServiceMessageRaw>
      _mapToFirestoreBackendServiceMessageRawRecursive(
    Map<String, Map<String, dynamic>> messages,
  ) =>
          messages.map(
            (String id, Map<String, dynamic> message) =>
                MapEntry<String, FirestoreBackendServiceMessageRaw>(
              id,
              FirestoreBackendServiceMessageRaw(
                id: id,
                content: message['content'] as String,
                authorId: message['authorId'] as String,
                replies: _mapToFirestoreBackendServiceMessageRawRecursive(
                  (message['replies'] as Map<String, dynamic>).cast(),
                ),
              ),
            ),
          );

  @override
  Future<List<SearchBackendServicePost>> search({
    required String query,
  }) async =>
      firestore.collection(_postsCollection).get().then(
            (QuerySnapshot<Map<String, dynamic>> collection) => collection.docs
                .map(
                  (QueryDocumentSnapshot<Map<String, dynamic>> element) =>
                      element.data()..["postId"] = element.id,
                )
                .where(
                  (Map<String, dynamic> element) =>
                      element["title"] != null && element["content"] != null,
                )
                .map(
                  (Map<String, dynamic> element) => SearchBackendServicePost(
                    postId: element["postId"]! as String,
                    title: element["title"]! as String,
                    body: element["content"]! as String,
                  ),
                )
                .toList(),
          );

  @override
  Stream<ChatBackendServiceChat> fetchChatData(String chatId) =>
      firestore.collection(_chatsCollection).doc(chatId).snapshots().asyncMap(
        (DocumentSnapshot<Map<String, dynamic>> doc) async {
          final Map<String, dynamic>? chatData = doc.data();
          if (chatData == null) {
            throw Exception("Chat data not found");
          }

          final List<ChatBackendServiceMessage> messages =
              mapFirestoreBackendServiceMessageToChatBackendServiceMessage(
            (chatData['messages'] as List<dynamic>)
                .cast<Map<String, dynamic>>(),
          );

          final String currentUserId =
              (await firestore.collection(_usersCollection).limit(1).get())
                  .docs
                  .first
                  .id;

          final List<Map<String, dynamic>> users =
              await Stream<String>.fromIterable(
            (chatData['participants'] as List<dynamic>).cast<String>(),
          ).asyncMap(
            (String userId) async {
              final DocumentSnapshot<Map<String, dynamic>> docSnapshot =
                  await firestore
                      .collection(_usersCollection)
                      .doc(userId)
                      .get();
              final Map<String, dynamic> data = docSnapshot.data()!;
              return data..putIfAbsent('id', () => userId);
            },
          ).toList();

          final List<ChatBackendServicePerson> typedUsers =
              <ChatBackendServicePerson>[];

          for (final Map<String, dynamic> user in users) {
            final String userId = user['id'] as String;
            final ChatBackendServicePerson typedUser = ChatBackendServicePerson(
              id: userId,
              name: user['name'] as String,
              imageUrl: user['imageUrl'] as String,
            );
            typedUsers.add(typedUser);
          }

          return ChatBackendServiceChat(
            chatId: chatId,
            currentUserId: currentUserId,
            chatPartner: typedUsers.firstWhere(
              (ChatBackendServicePerson user) => user.id != currentUserId,
            ),
            messages: messages,
          );
        },
      );

  List<ChatBackendServiceMessage>
      mapFirestoreBackendServiceMessageToChatBackendServiceMessage(
    List<Map<String, dynamic>> messages,
  ) =>
          messages
              .mapIndexed(
                (int index, Map<String, dynamic> message) =>
                    ChatBackendServiceMessage(
                  content: message['content'] as String? ?? '',
                  authorId: message['authorId'] as String? ?? '',
                  messageId: index.toString(),
                  timestamp: message['timestamp'] != null
                      ? DateTime.parse(message['timestamp'] as String)
                      : DateTime.now(),
                ),
              )
              .toList();

  @override
  Future<void> addChatMessage(
    String chatId,
    ChatBackendServiceMessage message,
  ) async {
    final DocumentReference<Map<String, dynamic>> chatReference =
        firestore.collection(_chatsCollection).doc(chatId);

    final DocumentSnapshot<Map<String, dynamic>> chatSnapshot =
        await chatReference.get();

    if (!chatSnapshot.exists) {
      throw Exception("Chat data not found");
    }

    final Map<String, dynamic>? chatData = chatSnapshot.data();

    if (chatData == null) {
      throw Exception("Chat data not found");
    }

    final List<dynamic> messages =
        (chatData['messages'] as List<dynamic>?) ?? <List<dynamic>>[];

    final Map<String, dynamic> newMessage = <String, dynamic>{
      'content': message.content,
      'authorId': message.authorId,
      'timestamp': message.timestamp.toIso8601String(),
    };

    messages.add(newMessage);

    return chatReference.update(<String, dynamic>{
      'messages': messages,
    });
  }

  @override
  Future<void> deleteChatMessage(String chatId, String messageId) async {
    final DocumentReference<Map<String, dynamic>> chatReference =
        firestore.collection(_chatsCollection).doc(chatId);

    final DocumentSnapshot<Map<String, dynamic>> chatSnapshot =
        await chatReference.get();

    if (!chatSnapshot.exists) {
      throw Exception("Chat data not found");
    }

    final Map<String, dynamic>? chatData = chatSnapshot.data();

    if (chatData == null) {
      throw Exception("Chat data not found");
    }

    final List<dynamic> messages = ((chatData['messages'] as List<dynamic>?) ??
        <List<dynamic>>[])
      ..removeAt(int.parse(messageId));

    return chatReference.update(<String, dynamic>{
      'messages': messages,
    });
  }

  @override
  Future<ChatBackendServicePerson> getCurrentUser() async {
    final QuerySnapshot<Map<String, dynamic>> value =
        await firestore.collection(_usersCollection).get();
    final QueryDocumentSnapshot<Map<String, dynamic>> user = value.docs.first;

    final String? imageUrl = user['imageUrl'] as String?;

    return ChatBackendServicePerson(
      id: user.id,
      name: user['name'] as String,
      imageUrl: imageUrl,
    );
  }
}

// convenience classes to work with Firestore data
@freezed
class FirestoreBackendServicePost with _$FirestoreBackendServicePost {
  const FirestoreBackendServicePost._();
  const factory FirestoreBackendServicePost({
    required final String id,
    required final String title,
    required final String content,
    required final String authorId,
    required final Map<String, FirestoreBackendServiceMessageRaw> replies,
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
    required final Uri imageUrl,
    required final List<String> titles,
  }) = _FirestoreBackendServiceUser;

  factory FirestoreBackendServiceUser.fromJson(Map<String, dynamic> json) =>
      _$FirestoreBackendServiceUserFromJson(json);
}

@freezed
class FirestoreBackendServiceMessageWithAuthor
    with _$FirestoreBackendServiceMessageWithAuthor {
  const FirestoreBackendServiceMessageWithAuthor._();

  const factory FirestoreBackendServiceMessageWithAuthor({
    required final String id,
    required final String content,
    required final FirestoreBackendServiceUser author,
    required final Map<String, FirestoreBackendServiceMessageWithAuthor>
        replies,
  }) = _FirestoreBackendServiceMessageWithAuthor;

  factory FirestoreBackendServiceMessageWithAuthor.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FirestoreBackendServiceMessageWithAuthorFromJson(json);
}

@freezed
class FirestoreBackendServiceMessageRaw
    with _$FirestoreBackendServiceMessageRaw {
  const FirestoreBackendServiceMessageRaw._();
  const factory FirestoreBackendServiceMessageRaw({
    required final String id,
    required final String content,
    required final String authorId,
    required final Map<String, FirestoreBackendServiceMessageRaw> replies,
  }) = _FirestoreBackendServiceMessageRaw;

  factory FirestoreBackendServiceMessageRaw.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FirestoreBackendServiceMessageRawFromJson(json);
}
