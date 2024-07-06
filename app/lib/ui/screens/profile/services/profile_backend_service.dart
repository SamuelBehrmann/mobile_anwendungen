import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_backend_service.freezed.dart';

abstract interface class ProfileBackendService {
  Future<ProfileBackendServiceUser> getUser();
  Future<void> editUser(ProfileBackendServiceUser user);
}

@freezed
class ProfileBackendServiceUser with _$ProfileBackendServiceUser {
  const factory ProfileBackendServiceUser({
    required final String id,
    required final String name,
    required final String? email,
    required final String password,
    required final Uri? imageUrl,
    String? phoneNumber,
    String? description,
  }) = _ProfileBackendServiceUser;
}
