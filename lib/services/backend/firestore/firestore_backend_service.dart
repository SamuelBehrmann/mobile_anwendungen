import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medi_support/services/backend/backend_service.dart';

class FirestoreBackendService extends BackendServiceAggregator {
  final FirebaseFirestore firestore;

  FirestoreBackendService(
    this.firestore,
  );
}
