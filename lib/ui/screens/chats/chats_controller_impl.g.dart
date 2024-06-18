// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_controller_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatsControllerImplHash() =>
    r'952982b16d4ba0e7a4061be835eb9a741a013c02';

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

  ChatsModel build({
    required ChatsNavigationService navigationService,
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
  }) {
    return ChatsControllerImplProvider(
      navigationService: navigationService,
    );
  }

  @override
  ChatsControllerImplProvider getProviderOverride(
    covariant ChatsControllerImplProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
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
  }) : this._internal(
          () => ChatsControllerImpl()..navigationService = navigationService,
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
        );

  ChatsControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
  }) : super.internal();

  final ChatsNavigationService navigationService;

  @override
  ChatsModel runNotifierBuild(
    covariant ChatsControllerImpl notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
    );
  }

  @override
  Override overrideWith(ChatsControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatsControllerImplProvider._internal(
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
  AutoDisposeNotifierProviderElement<ChatsControllerImpl, ChatsModel>
      createElement() {
    return _ChatsControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatsControllerImplProvider &&
        other.navigationService == navigationService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChatsControllerImplRef on AutoDisposeNotifierProviderRef<ChatsModel> {
  /// The parameter `navigationService` of this provider.
  ChatsNavigationService get navigationService;
}

class _ChatsControllerImplProviderElement
    extends AutoDisposeNotifierProviderElement<ChatsControllerImpl, ChatsModel>
    with ChatsControllerImplRef {
  _ChatsControllerImplProviderElement(super.provider);

  @override
  ChatsNavigationService get navigationService =>
      (origin as ChatsControllerImplProvider).navigationService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
