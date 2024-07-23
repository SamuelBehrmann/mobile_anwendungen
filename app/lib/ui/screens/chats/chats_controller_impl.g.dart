// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_controller_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatsControllerImplHash() =>
    r'7eaae7f567f7de1daeb754cf2aa7e9368fea3d3e';

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

abstract class _$ChatsControllerImpl
    extends BuildlessAutoDisposeNotifier<ChatsModel> {
  late final ChatsNavigationService navigationService;
  late final ChatsBackendService backendService;

  ChatsModel build({
    required ChatsNavigationService navigationService,
    required ChatsBackendService backendService,
  });
}

/// See also [ChatsControllerImpl].
@ProviderFor(ChatsControllerImpl)
const chatsControllerImplProvider = ChatsControllerImplFamily();

/// See also [ChatsControllerImpl].
class ChatsControllerImplFamily extends Family<ChatsModel> {
  /// See also [ChatsControllerImpl].
  const ChatsControllerImplFamily();

  /// See also [ChatsControllerImpl].
  ChatsControllerImplProvider call({
    required ChatsNavigationService navigationService,
    required ChatsBackendService backendService,
  }) {
    return ChatsControllerImplProvider(
      navigationService: navigationService,
      backendService: backendService,
    );
  }

  @override
  ChatsControllerImplProvider getProviderOverride(
    covariant ChatsControllerImplProvider provider,
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
  String? get name => r'chatsControllerImplProvider';
}

/// See also [ChatsControllerImpl].
class ChatsControllerImplProvider
    extends AutoDisposeNotifierProviderImpl<ChatsControllerImpl, ChatsModel> {
  /// See also [ChatsControllerImpl].
  ChatsControllerImplProvider({
    required ChatsNavigationService navigationService,
    required ChatsBackendService backendService,
  }) : this._internal(
          () => ChatsControllerImpl()
            ..navigationService = navigationService
            ..backendService = backendService,
          from: chatsControllerImplProvider,
          name: r'chatsControllerImplProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatsControllerImplHash,
          dependencies: ChatsControllerImplFamily._dependencies,
          allTransitiveDependencies:
              ChatsControllerImplFamily._allTransitiveDependencies,
          navigationService: navigationService,
          backendService: backendService,
        );

  ChatsControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.backendService,
  }) : super.internal();

  final ChatsNavigationService navigationService;
  final ChatsBackendService backendService;

  @override
  ChatsModel runNotifierBuild(
    covariant ChatsControllerImpl notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      backendService: backendService,
    );
  }

  @override
  Override overrideWith(ChatsControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatsControllerImplProvider._internal(
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
  AutoDisposeNotifierProviderElement<ChatsControllerImpl, ChatsModel>
      createElement() {
    return _ChatsControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatsControllerImplProvider &&
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

mixin ChatsControllerImplRef on AutoDisposeNotifierProviderRef<ChatsModel> {
  /// The parameter `navigationService` of this provider.
  ChatsNavigationService get navigationService;

  /// The parameter `backendService` of this provider.
  ChatsBackendService get backendService;
}

class _ChatsControllerImplProviderElement
    extends AutoDisposeNotifierProviderElement<ChatsControllerImpl, ChatsModel>
    with ChatsControllerImplRef {
  _ChatsControllerImplProviderElement(super.provider);

  @override
  ChatsNavigationService get navigationService =>
      (origin as ChatsControllerImplProvider).navigationService;
  @override
  ChatsBackendService get backendService =>
      (origin as ChatsControllerImplProvider).backendService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
