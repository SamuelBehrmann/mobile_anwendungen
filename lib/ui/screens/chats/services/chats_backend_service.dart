import 'package:freezed_annotation/freezed_annotation.dart';

part 'chats_backend_service.freezed.dart';

abstract interface class ChatsBackendService {
  Future<List<ChatsBackendServiceChat>> fetchData();
}

@freezed
class ChatsBackendServiceChat with _$ChatsBackendServiceChat {
  const factory ChatsBackendServiceChat({
    required String name,
    required String message,
    String? profilePicturePath,
  }) = _ChatsBackendServiceChat;
}
