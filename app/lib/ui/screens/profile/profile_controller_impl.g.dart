// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileControllerImplHash() =>
    r'bf47bece08283ae6457a145a27fbfc44a88da4d1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ProfileControllerImpl
    extends BuildlessAutoDisposeNotifier<ProfileModel> {
  late final ProfileNavigationService navigationService;
  late final ProfileBackendService backendService;

  ProfileModel build({
    required ProfileNavigationService navigationService,
    required ProfileBackendService backendService,
  });
}

/// See also [ProfileControllerImpl].
@ProviderFor(ProfileControllerImpl)
const profileControllerImplProvider = ProfileControllerImplFamily();

/// See also [ProfileControllerImpl].
class ProfileControllerImplFamily extends Family<ProfileModel> {
  /// See also [ProfileControllerImpl].
  const ProfileControllerImplFamily();

  /// See also [ProfileControllerImpl].
  ProfileControllerImplProvider call({
    required ProfileNavigationService navigationService,
    required ProfileBackendService backendService,
  }) {
    return ProfileControllerImplProvider(
      navigationService: navigationService,
      backendService: backendService,
    );
  }

  @override
  ProfileControllerImplProvider getProviderOverride(
    covariant ProfileControllerImplProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
      backendService: provider.backendService,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'profileControllerImplProvider';
}

/// See also [ProfileControllerImpl].
class ProfileControllerImplProvider extends AutoDisposeNotifierProviderImpl<
    ProfileControllerImpl, ProfileModel> {
  /// See also [ProfileControllerImpl].
  ProfileControllerImplProvider({
    required ProfileNavigationService navigationService,
    required ProfileBackendService backendService,
  }) : this._internal(
          () => ProfileControllerImpl()
            ..navigationService = navigationService
            ..backendService = backendService,
          from: profileControllerImplProvider,
          name: r'profileControllerImplProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileControllerImplHash,
          dependencies: ProfileControllerImplFamily._dependencies,
          allTransitiveDependencies:
              ProfileControllerImplFamily._allTransitiveDependencies,
          navigationService: navigationService,
          backendService: backendService,
        );

  ProfileControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.backendService,
  }) : super.internal();

  final ProfileNavigationService navigationService;
  final ProfileBackendService backendService;

  @override
  ProfileModel runNotifierBuild(
    covariant ProfileControllerImpl notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      backendService: backendService,
    );
  }

  @override
  Override overrideWith(ProfileControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileControllerImplProvider._internal(
        () => create()
          ..navigationService = navigationService
          ..backendService = backendService,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
        backendService: backendService,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ProfileControllerImpl, ProfileModel>
      createElement() {
    return _ProfileControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileControllerImplProvider &&
        other.navigationService == navigationService &&
        other.backendService == backendService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, backendService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProfileControllerImplRef on AutoDisposeNotifierProviderRef<ProfileModel> {
  /// The parameter `navigationService` of this provider.
  ProfileNavigationService get navigationService;

  /// The parameter `backendService` of this provider.
  ProfileBackendService get backendService;
}

class _ProfileControllerImplProviderElement
    extends AutoDisposeNotifierProviderElement<ProfileControllerImpl,
        ProfileModel> with ProfileControllerImplRef {
  _ProfileControllerImplProviderElement(super.provider);

  @override
  ProfileNavigationService get navigationService =>
      (origin as ProfileControllerImplProvider).navigationService;
  @override
  ProfileBackendService get backendService =>
      (origin as ProfileControllerImplProvider).backendService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
