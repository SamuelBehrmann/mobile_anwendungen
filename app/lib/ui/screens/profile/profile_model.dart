import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';

@freezed
class ProfileModelUser with _$ProfileModelUser {
  const factory ProfileModelUser({
    required String id,
    required String name,
    required String? email,
    required String password,
    Uri? profilePicturePath,
    String? phoneNumber,
    String? description,
  }) = _ProfileModelUser;
}

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel.loading() = ProfileModelLoading;
  const factory ProfileModel.data({
    required ProfileModelUser user,
  }) = ProfileModelData;
  const factory ProfileModel.error({
    required String message,
  }) = ProfileModelError;
}
