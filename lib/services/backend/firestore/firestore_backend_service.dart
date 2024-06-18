import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/services/backend/backend_service.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';
import 'package:medi_support/ui/screens/home/home_model.dart';
import 'package:medi_support/ui/screens/post/services/post_backend_service.dart';
import 'package:uuid/uuid.dart';

part 'firestore_backend_service.freezed.dart';
part 'firestore_backend_service.g.dart';

typedef _$DocumentSnapshot = QueryDocumentSnapshot<Map<String, dynamic>>;
typedef _$Snapshot = QuerySnapshot<Map<String, dynamic>>;

class FirestoreBackendService extends BackendServiceAggregator {
  static const String _postsCollection = 'posts';
  static const String _chatsCollection = 'chats';

  final FirebaseFirestore firestore;

  FirestoreBackendService(
    this.firestore,
  );

  @override
  Future<void> send({required String title, required String body}) async {
    await firestore.collection(_postsCollection).add(<String, String>{
      'title': title,
      'body': body,
      'createdAt': DateTime.now().toUtc().toIso8601String(),
    });
  }

  @override
  Future<List<ChatsBackendServiceChat>> fetchChats() =>
      firestore.collection(_chatsCollection).get().then(
            (_$Snapshot snapshot) =>
                Stream<_$DocumentSnapshot>.fromIterable(snapshot.docs)
                    .asyncMap((_$DocumentSnapshot doc) async {
              Query<Map<String, dynamic>> subCollectionQuery =
                  doc.reference.collection('messages').limit(1);
              _$DocumentSnapshot firstDocSnapshot =
                  await subCollectionQuery.get().then(
                        (_$Snapshot snapshot) => snapshot.docs.first,
                      );
              Map<String, dynamic> user = (doc['persons']
                  as Map<String, dynamic>)['personA'] as Map<String, dynamic>;
              return ChatsBackendServiceChat(
                name: user['name'] as String,
                message: firstDocSnapshot['data'] as String,
                profilePicturePath: user['imageUrl'] as String?,
              );
            }).toList(),
          );

  @override
  Stream<PostBackendServicePost> getPostStream({
    required final String postId,
  }) =>
      firestore.collection(_postsCollection).doc(postId).snapshots().map(
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
        firestore.collection(_postsCollection).doc(postId);

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
  Future<List<HomeModelPost>> fetchPosts() {
    // TODO: implement fetchPosts
    throw UnimplementedError();
  }
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
