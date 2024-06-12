import 'package:freezed_annotation/freezed_annotation.dart';

part 'chats_model.freezed.dart';

@freezed
class ChatsModel with _$ChatsModel {
  const factory ChatsModel({
    required List<SingleChat> chats,
  }) = _ChatsModel;
}

@freezed
class SingleChat with _$SingleChat {
  const factory SingleChat({
    required String name,
    required String message,
    String? profilePicturePath,
  }) = _SingleChat;
}