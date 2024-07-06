import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/ui/screens/profile/services/profile_backend_service.dart';

part 'profile_model.freezed.dart';

@freezed
class ProfileModelUser with _$ProfileModelUser {
  const ProfileModelUser._();
  const factory ProfileModelUser({
    required String id,
    required String name,
    required String? email,
    required String password,
    Uri? profilePicturePath,
    String? phoneNumber,
    String? description,
  }) = _ProfileModelUser;

  ProfileBackendServiceUser toBackendServiceUser() => ProfileBackendServiceUser(
        id: id,
        name: name,
        email: email,
        password: password,
        imageUrl: profilePicturePath,
        phoneNumber: phoneNumber,
        description: description,
      );

  factory ProfileModelUser.fromBackendServiceUser(
    ProfileBackendServiceUser user,
  ) =>
      ProfileModelUser(
        id: user.id,
        name: user.name,
        email: user.email,
        password: user.password,
        profilePicturePath: user.imageUrl,
        phoneNumber: user.phoneNumber,
        description: user.description,
      );
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
