import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medi_support/services/backend/backend_service.dart';

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
}
