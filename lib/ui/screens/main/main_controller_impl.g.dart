// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mainControllerImplHash() =>
    r'f050966e9dca0a51deb213543caeaca9f554306f';

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

abstract class _$MainControllerImpl
    extends BuildlessAutoDisposeNotifier<MainModel> {
  late final MainNavigationService navigationService;

  MainModel build(
    MainNavigationService navigationService,
  );
}

/// See also [MainControllerImpl].
@ProviderFor(MainControllerImpl)
const mainControllerImplProvider = MainControllerImplFamily();

/// See also [MainControllerImpl].
class MainControllerImplFamily extends Family<MainModel> {
  /// See also [MainControllerImpl].
  const MainControllerImplFamily();

  /// See also [MainControllerImpl].
  MainControllerImplProvider call(
    MainNavigationService navigationService,
  ) {
    return MainControllerImplProvider(
      navigationService,
    );
  }

  @override
  MainControllerImplProvider getProviderOverride(
    covariant MainControllerImplProvider provider,
  ) {
    return call(
      provider.navigationService,
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
  String? get name => r'mainControllerImplProvider';
}

/// See also [MainControllerImpl].
class MainControllerImplProvider
    extends AutoDisposeNotifierProviderImpl<MainControllerImpl, MainModel> {
  /// See also [MainControllerImpl].
  MainControllerImplProvider(
    MainNavigationService navigationService,
  ) : this._internal(
          () => MainControllerImpl()..navigationService = navigationService,
          from: mainControllerImplProvider,
          name: r'mainControllerImplProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mainControllerImplHash,
          dependencies: MainControllerImplFamily._dependencies,
          allTransitiveDependencies:
              MainControllerImplFamily._allTransitiveDependencies,
          navigationService: navigationService,
        );

  MainControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
  }) : super.internal();

  final MainNavigationService navigationService;

  @override
  MainModel runNotifierBuild(
    covariant MainControllerImpl notifier,
  ) {
    return notifier.build(
      navigationService,
    );
  }

  @override
  Override overrideWith(MainControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: MainControllerImplProvider._internal(
        () => create()..navigationService = navigationService,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<MainControllerImpl, MainModel>
      createElement() {
    return _MainControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MainControllerImplProvider &&
        other.navigationService == navigationService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MainControllerImplRef on AutoDisposeNotifierProviderRef<MainModel> {
  /// The parameter `navigationService` of this provider.
  MainNavigationService get navigationService;
}

class _MainControllerImplProviderElement
    extends AutoDisposeNotifierProviderElement<MainControllerImpl, MainModel>
    with MainControllerImplRef {
  _MainControllerImplProviderElement(super.provider);

  @override
  MainNavigationService get navigationService =>
      (origin as MainControllerImplProvider).navigationService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
