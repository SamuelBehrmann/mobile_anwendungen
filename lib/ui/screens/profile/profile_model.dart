import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String name,
    required String email,
    required String phoneNumber,
    String? profilePicturePath,
  }) = _User;
}

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required User user,
  }) = _ProfileModel;
}

