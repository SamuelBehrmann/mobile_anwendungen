// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/services/backend/backend_service.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';
import 'package:medi_support/ui/screens/home/services/home_backend_service.dart';
import 'package:medi_support/ui/screens/post/services/post_backend_service.dart';
import 'package:medi_support/ui/screens/search/services/search_backend_service.dart';
import 'package:uuid/uuid.dart';

part 'firestore_backend_service.freezed.dart';
part 'firestore_backend_service.g.dart';

typedef _$DocumentSnapshot = QueryDocumentSnapshot<Map<String, dynamic>>;
typedef _$Snapshot = QuerySnapshot<Map<String, dynamic>>;

class FirestoreBackendService extends BackendServiceAggregator {
  static const String _postsCollection = 'posts';
  static const String _chatsCollection = 'chats';
  static const String _usersCollection = 'users';

  final FirebaseFirestore firestore;

  FirestoreBackendService(
    this.firestore,
  );

  @override
  Future<void> send({required String title, required String content}) async {
    final QueryDocumentSnapshot<Map<String, dynamic>> user =
        (await firestore.collection(_usersCollection).limit(1).get())
            .docs
            .first;

    await firestore.collection(_postsCollection).add(<String, dynamic>{
      'title': title,
      'content': content,
      'createdAt': DateTime.now().toUtc().toIso8601String(),
      'replies': <Map<String, dynamic>>[],
      'author': user.id,
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
                final DocumentSnapshot<Map<String, dynamic>> user =
                    await firestore
                        .collection(_usersCollection)
                        .doc(element["author"] as String)
                        .get();

                return HomeBackendServicePost(
                  user: HomeBackendServiceUser(
                    userId: user.id,
                    userName: user["name"] as String,
                    userAvatarUrl: user["imageUrl"] as String,
                    titles: (user["titles"] as List<dynamic>).cast(),
                  ),
                  postId: element["postId"]! as String,
                  title: element["title"]! as String,
                  body: element["content"]! as String,
                );
              },
            ).toList(),
          );

  @override
  Future<List<ChatsBackendServiceChat>> fetchChats() => firestore
      .collection(_chatsCollection)
      .get()
      .then(
        (_$Snapshot snapshot) =>
            Stream<_$DocumentSnapshot>.fromIterable(snapshot.docs)
                .asyncMap((_$DocumentSnapshot doc) async {
          Map<String, dynamic> message =
              (doc['messages'] as List<dynamic>).first as Map<String, dynamic>;

          String userId =
              (doc['participants'] as List<dynamic>).first as String;

          final Map<String, dynamic>? user =
              (await firestore.collection(_usersCollection).doc(userId).get())
                  .data();

          return ChatsBackendServiceChat(
            name: user!['name'] as String,
            message: message['content'] as String,
            profilePicturePath: user['imageUrl'] as String?,
          );
        }).toList(),
      );

  @override
  Stream<PostBackendServicePost> getPostStream({
    required final String postId,
  }) =>
      firestore.collection(_postsCollection).doc(postId).snapshots().asyncMap(
        (DocumentSnapshot<Map<String, dynamic>> doc) async {
          Map<String, dynamic> data = doc.data()!;
          data['id'] = doc.id;
          final Map<String, dynamic>? user = (await firestore
                  .collection(_usersCollection)
                  .doc(data['author'] as String)
                  .get())
              .data();

          final List<FirestoreBackendServiceMessage> replies =
              await _fetchMessageAuthorRecursive(
            doc['replies'] as Map<String, dynamic>,
          );
          // TODO: rename to authorId in DB
          user!['id'] = data['author'];
          data['author'] = user;
          data['replies'] = replies
              .map(
                (FirestoreBackendServiceMessage message) => message.toJson(),
              )
              .toList();
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
            avatar: post.author.imageUrl,
            titles: post.author.titles,
          ),
          replies:
              _mapFirestoreBackendServiceMessageToPostBackendServiceMessage(
            post.replies,
          ),
        ),
      );

  Future<List<FirestoreBackendServiceMessage>> _fetchMessageAuthorRecursive(
    Map<String, dynamic> messages,
  ) async =>
      Stream.fromIterable(messages.entries)
          .map(
        (event) => MapEntry<String, Map<String, dynamic>>(
          event.key,
          event.value as Map<String, dynamic>,
        ),
      )
          .asyncMap((MapEntry<String, Map<String, dynamic>> message) async {
        Map<String, dynamic>? userData = (await firestore
                .collection('users')
                .doc(message.value['author'] as String)
                .get())
            .data();

        // TODO: rename to authorId in DB
        // order by createdAt
        // add createdAt to message

        userData!['id'] = message.value['author'];

        return FirestoreBackendServiceMessage(
          id: message.key,
          message: message.value['content'] as String,
          author: FirestoreBackendServiceUser.fromJson(userData),
          replies: await _fetchMessageAuthorRecursive(
            message.value['replies'] as Map<String, dynamic>,
          ),
        );
      }).toList();

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
      imageUrl: Uri.parse(
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
                    avatar: message.author.imageUrl,
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
                      element["title"] != null && element["body"] != null,
                )
                .map(
                  (Map<String, dynamic> element) => SearchBackendServicePost(
                    userId: element["userId"]! as String,
                    postId: element["postId"]! as String,
                    title: element["title"]! as String,
                    body: element["body"]! as String,
                  ),
                )
                .toList(),
          );
}

// convenience classes to work with Firestore data
@freezed
class FirestoreBackendServicePost with _$FirestoreBackendServicePost {
  const FirestoreBackendServicePost._();
  const factory FirestoreBackendServicePost({
    required final String id,
    required final String title,
    required final String content,
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
    required final Uri imageUrl,
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
