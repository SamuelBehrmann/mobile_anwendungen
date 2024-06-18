import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medi_support/services/backend/firestore/firestore_backend_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'backend_service.g.dart';

@Riverpod(keepAlive: true)
BackendServiceAggregator backendServiceAggregator(
  BackendServiceAggregatorRef ref,
) =>
    FirestoreBackendService(FirebaseFirestore.instance);

abstract class BackendServiceAggregator {}
