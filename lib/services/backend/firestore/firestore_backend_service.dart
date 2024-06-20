import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medi_support/services/backend/backend_service.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';

typedef DocumentSnapshot = QueryDocumentSnapshot<Map<String, dynamic>>;
typedef Snapshot = QuerySnapshot<Map<String, dynamic>>;

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

  @override
  Future<List<ChatsBackendServiceChat>> fetchData() =>
      firestore.collection('chats').get().then(
            (Snapshot snapshot) =>
                Stream<DocumentSnapshot>.fromIterable(snapshot.docs)
                    .asyncMap((DocumentSnapshot doc) async {
              Query<Map<String, dynamic>> subCollectionQuery =
                  doc.reference.collection('messages').limit(1);
              DocumentSnapshot firstDocSnapshot =
                  await subCollectionQuery.get().then(
                        (Snapshot snapshot) => snapshot.docs.first,
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
}
