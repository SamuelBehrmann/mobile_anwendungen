import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/profile/profile_controller_impl.dart';
import 'package:medi_support/ui/screens/profile/profile_model.dart';
import 'package:medi_support/ui/screens/profile/services/profile_backend_service.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockProfileBackendService mockProfileBackendService;
  late MockProfileNavigationService mockProfileNavigationService;
  setUp(
    () {
      mockProfileBackendService = MockProfileBackendService();
      mockProfileNavigationService = MockProfileNavigationService();
      when(mockProfileBackendService.getUser()).thenAnswer(
        (_) => Future<ProfileBackendServiceUser>.value(
          ProfileBackendServiceUser(
            id: 'id',
            name: 'name',
            email: 'email',
            imageUrl: Uri(),
            phoneNumber: 'phoneNumber',
            description: 'description',
            password: 'password',
          ),
        ),
      );
    },
  );

  ProfileControllerImpl createProfileController(String profileId) {
    final ProfileControllerImpl profileController = ProviderContainer().read(
      profileControllerImplProvider(
        backendService: mockProfileBackendService,
        navigationService: mockProfileNavigationService,
      ).notifier,
    );
    final KeepAliveLink keepAliveLink = profileController.ref.keepAlive();
    addTearDown(keepAliveLink.close);
    return profileController;
  }

  test('profile controller impl test build', () async {
    createProfileController('profileId');
    await Future<void>.delayed(Duration.zero);
    verify(mockProfileBackendService.getUser()).called(1);
  });

  test('profile controller impl test update description', () async {
    createProfileController('profileId')
      ..state = ProfileModel.data(
        user: ProfileModelUser(
          id: 'id',
          name: 'name',
          email: 'email',
          profilePicturePath: Uri(),
          phoneNumber: 'phoneNumber',
          description: 'description',
          password: 'password',
        ),
      )
      ..updateDescription('newDescription');
    await Future<void>.delayed(Duration.zero);
    verify(
      mockProfileBackendService.editUser(any),
    ).called(1);
  });

  test('profile controller impl test update Email', () async {
    createProfileController('profileId')
      ..state = ProfileModel.data(
        user: ProfileModelUser(
          id: 'id',
          name: 'name',
          email: 'email',
          profilePicturePath: Uri(),
          phoneNumber: 'phoneNumber',
          description: 'description',
          password: 'password',
        ),
      )
      ..updateEmail('newEmail');
    await Future<void>.delayed(Duration.zero);
    verify(
      mockProfileBackendService.editUser(any),
    ).called(1);
  });

  test('profile controller impl test update Name', () async {
    createProfileController('profileId')
      ..state = ProfileModel.data(
        user: ProfileModelUser(
          id: 'id',
          name: 'name',
          email: 'email',
          profilePicturePath: Uri(),
          phoneNumber: 'phoneNumber',
          description: 'description',
          password: 'password',
        ),
      )
      ..updateName('newName');
    await Future<void>.delayed(Duration.zero);
    verify(
      mockProfileBackendService.editUser(any),
    ).called(1);
  });
  test('profile controller impl test update Password', () async {
    createProfileController('profileId')
      ..state = ProfileModel.data(
        user: ProfileModelUser(
          id: 'id',
          name: 'name',
          email: 'email',
          profilePicturePath: Uri(),
          phoneNumber: 'phoneNumber',
          description: 'description',
          password: 'password',
        ),
      )
      ..updatePassword('newPhonenumber');
    await Future<void>.delayed(Duration.zero);
    verify(
      mockProfileBackendService.editUser(any),
    ).called(1);
  });

  test('profile controller impl test update PhoneNumber', () async {
    createProfileController('profileId')
      ..state = ProfileModel.data(
        user: ProfileModelUser(
          id: 'id',
          name: 'name',
          email: 'email',
          profilePicturePath: Uri(),
          phoneNumber: 'phoneNumber',
          description: 'description',
          password: 'password',
        ),
      )
      ..updatePhoneNumber('newPhoneNumber');
    await Future<void>.delayed(Duration.zero);
    verify(
      mockProfileBackendService.editUser(any),
    ).called(1);
  });

  test('profile controller impl test update description', () async {
    createProfileController('profileId')
      ..state = ProfileModel.data(
        user: ProfileModelUser(
          id: 'id',
          name: 'name',
          email: 'email',
          profilePicturePath: Uri(),
          phoneNumber: 'phoneNumber',
          description: 'description',
          password: 'password',
        ),
      )
      ..updateDescription('newDescription');
    await Future<void>.delayed(Duration.zero);
    verify(
      mockProfileBackendService.editUser(any),
    ).called(1);
  });
}
