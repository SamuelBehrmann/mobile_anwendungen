import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medi_support/services/backend/firestore/firestore_backend_service.dart';
import 'package:medi_support/ui/screens/chat/services/chat_backend_service.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_backend_service.dart';
import 'package:medi_support/ui/screens/post/services/post_backend_service.dart';
import 'package:medi_support/ui/screens/profile/services/profile_backend_service.dart';
import 'package:medi_support/ui/screens/search/services/search_backend_service.dart';
import 'package:medi_support/ui/screens/home/services/home_backend_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'backend_service.g.dart';

@Riverpod(keepAlive: true)
BackendServiceAggregator backendServiceAggregator(
  BackendServiceAggregatorRef ref,
) =>
    FirestoreBackendService(FirebaseFirestore.instance);

abstract class BackendServiceAggregator
    implements
        CreatePostBackendService,
        ChatsBackendService,
        ChatBackendService,
        PostBackendService,
        SearchBackendService,
        HomeBackendService,
        ProfileBackendService {}
