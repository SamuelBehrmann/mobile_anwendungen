// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeControllerImplHash() =>
    r'08ac143b8a73d546fcb5a64308a67de5e59790ca';

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

abstract class _$HomeControllerImpl
    extends BuildlessAutoDisposeNotifier<HomeModel> {
  late final HomeNavigationService navigationService;
  late final HomeBackendService backendService;

  HomeModel build({
    required HomeNavigationService navigationService,
    required HomeBackendService backendService,
  });
}

/// See also [HomeControllerImpl].
@ProviderFor(HomeControllerImpl)
const homeControllerImplProvider = HomeControllerImplFamily();

/// See also [HomeControllerImpl].
class HomeControllerImplFamily extends Family<HomeModel> {
  /// See also [HomeControllerImpl].
  const HomeControllerImplFamily();

  /// See also [HomeControllerImpl].
  HomeControllerImplProvider call({
    required HomeNavigationService navigationService,
    required HomeBackendService backendService,
  }) {
    return HomeControllerImplProvider(
      navigationService: navigationService,
      backendService: backendService,
    );
  }

  @override
  HomeControllerImplProvider getProviderOverride(
    covariant HomeControllerImplProvider provider,
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
  String? get name => r'homeControllerImplProvider';
}

/// See also [HomeControllerImpl].
class HomeControllerImplProvider
    extends AutoDisposeNotifierProviderImpl<HomeControllerImpl, HomeModel> {
  /// See also [HomeControllerImpl].
  HomeControllerImplProvider({
    required HomeNavigationService navigationService,
    required HomeBackendService backendService,
  }) : this._internal(
          () => HomeControllerImpl()
            ..navigationService = navigationService
            ..backendService = backendService,
          from: homeControllerImplProvider,
          name: r'homeControllerImplProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeControllerImplHash,
          dependencies: HomeControllerImplFamily._dependencies,
          allTransitiveDependencies:
              HomeControllerImplFamily._allTransitiveDependencies,
          navigationService: navigationService,
          backendService: backendService,
        );

  HomeControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.backendService,
  }) : super.internal();

  final HomeNavigationService navigationService;
  final HomeBackendService backendService;

  @override
  HomeModel runNotifierBuild(
    covariant HomeControllerImpl notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      backendService: backendService,
    );
  }

  @override
  Override overrideWith(HomeControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: HomeControllerImplProvider._internal(
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
  AutoDisposeNotifierProviderElement<HomeControllerImpl, HomeModel>
      createElement() {
    return _HomeControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomeControllerImplProvider &&
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

mixin HomeControllerImplRef on AutoDisposeNotifierProviderRef<HomeModel> {
  /// The parameter `navigationService` of this provider.
  HomeNavigationService get navigationService;

  /// The parameter `backendService` of this provider.
  HomeBackendService get backendService;
}

class _HomeControllerImplProviderElement
    extends AutoDisposeNotifierProviderElement<HomeControllerImpl, HomeModel>
    with HomeControllerImplRef {
  _HomeControllerImplProviderElement(super.provider);

  @override
  HomeNavigationService get navigationService =>
      (origin as HomeControllerImplProvider).navigationService;
  @override
  HomeBackendService get backendService =>
      (origin as HomeControllerImplProvider).backendService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
