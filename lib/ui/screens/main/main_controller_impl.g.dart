// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mainControllerImplHash() =>
    r'a08b38f99eb836286f2de403a9c863fec39f1ce6';

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

abstract class _$MainControllerImpl extends BuildlessNotifier<MainModel> {
  late final MainNavigationService navigationService;
  late final int initalIndex;
  late final void Function(int) setIndexCallBack;

  MainModel build({
    required MainNavigationService navigationService,
    required int initalIndex,
    required void Function(int) setIndexCallBack,
  });
}

/// See also [MainControllerImpl].
@ProviderFor(MainControllerImpl)
const mainControllerImplProvider = MainControllerImplFamily();

/// See also [MainControllerImpl].
class MainControllerImplFamily extends Family<MainModel> {
  /// See also [MainControllerImpl].
  const MainControllerImplFamily();

  /// See also [MainControllerImpl].
  MainControllerImplProvider call({
    required MainNavigationService navigationService,
    required int initalIndex,
    required void Function(int) setIndexCallBack,
  }) {
    return MainControllerImplProvider(
      navigationService: navigationService,
      initalIndex: initalIndex,
      setIndexCallBack: setIndexCallBack,
    );
  }

  @override
  MainControllerImplProvider getProviderOverride(
    covariant MainControllerImplProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
      initalIndex: provider.initalIndex,
      setIndexCallBack: provider.setIndexCallBack,
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
    extends NotifierProviderImpl<MainControllerImpl, MainModel> {
  /// See also [MainControllerImpl].
  MainControllerImplProvider({
    required MainNavigationService navigationService,
    required int initalIndex,
    required void Function(int) setIndexCallBack,
  }) : this._internal(
          () => MainControllerImpl()
            ..navigationService = navigationService
            ..initalIndex = initalIndex
            ..setIndexCallBack = setIndexCallBack,
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
          initalIndex: initalIndex,
          setIndexCallBack: setIndexCallBack,
        );

  MainControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.initalIndex,
    required this.setIndexCallBack,
  }) : super.internal();

  final MainNavigationService navigationService;
  final int initalIndex;
  final void Function(int) setIndexCallBack;

  @override
  MainModel runNotifierBuild(
    covariant MainControllerImpl notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      initalIndex: initalIndex,
      setIndexCallBack: setIndexCallBack,
    );
  }

  @override
  Override overrideWith(MainControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: MainControllerImplProvider._internal(
        () => create()
          ..navigationService = navigationService
          ..initalIndex = initalIndex
          ..setIndexCallBack = setIndexCallBack,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
        initalIndex: initalIndex,
        setIndexCallBack: setIndexCallBack,
      ),
    );
  }

  @override
  NotifierProviderElement<MainControllerImpl, MainModel> createElement() {
    return _MainControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MainControllerImplProvider &&
        other.navigationService == navigationService &&
        other.initalIndex == initalIndex &&
        other.setIndexCallBack == setIndexCallBack;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, initalIndex.hashCode);
    hash = _SystemHash.combine(hash, setIndexCallBack.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MainControllerImplRef on NotifierProviderRef<MainModel> {
  /// The parameter `navigationService` of this provider.
  MainNavigationService get navigationService;

  /// The parameter `initalIndex` of this provider.
  int get initalIndex;

  /// The parameter `setIndexCallBack` of this provider.
  void Function(int) get setIndexCallBack;
}

class _MainControllerImplProviderElement
    extends NotifierProviderElement<MainControllerImpl, MainModel>
    with MainControllerImplRef {
  _MainControllerImplProviderElement(super.provider);

  @override
  MainNavigationService get navigationService =>
      (origin as MainControllerImplProvider).navigationService;
  @override
  int get initalIndex => (origin as MainControllerImplProvider).initalIndex;
  @override
  void Function(int) get setIndexCallBack =>
      (origin as MainControllerImplProvider).setIndexCallBack;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
