// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_controller_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createPostControllerImplHash() =>
    r'fcc00635a80186bfefce9a038213f114e1d3d8c5';

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

abstract class _$CreatePostControllerImpl
    extends BuildlessAutoDisposeNotifier<CreatePostModel> {
  late final CreatePostNavigationService navigationService;
  late final CreatePostBackendService backendService;

  CreatePostModel build({
    required CreatePostNavigationService navigationService,
    required CreatePostBackendService backendService,
  });
}

/// See also [CreatePostControllerImpl].
@ProviderFor(CreatePostControllerImpl)
const createPostControllerImplProvider = CreatePostControllerImplFamily();

/// See also [CreatePostControllerImpl].
class CreatePostControllerImplFamily extends Family<CreatePostModel> {
  /// See also [CreatePostControllerImpl].
  const CreatePostControllerImplFamily();

  /// See also [CreatePostControllerImpl].
  CreatePostControllerImplProvider call({
    required CreatePostNavigationService navigationService,
    required CreatePostBackendService backendService,
  }) {
    return CreatePostControllerImplProvider(
      navigationService: navigationService,
      backendService: backendService,
    );
  }

  @override
  CreatePostControllerImplProvider getProviderOverride(
    covariant CreatePostControllerImplProvider provider,
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
  String? get name => r'createPostControllerImplProvider';
}

/// See also [CreatePostControllerImpl].
class CreatePostControllerImplProvider extends AutoDisposeNotifierProviderImpl<
    CreatePostControllerImpl, CreatePostModel> {
  /// See also [CreatePostControllerImpl].
  CreatePostControllerImplProvider({
    required CreatePostNavigationService navigationService,
    required CreatePostBackendService backendService,
  }) : this._internal(
          () => CreatePostControllerImpl()
            ..navigationService = navigationService
            ..backendService = backendService,
          from: createPostControllerImplProvider,
          name: r'createPostControllerImplProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createPostControllerImplHash,
          dependencies: CreatePostControllerImplFamily._dependencies,
          allTransitiveDependencies:
              CreatePostControllerImplFamily._allTransitiveDependencies,
          navigationService: navigationService,
          backendService: backendService,
        );

  CreatePostControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.backendService,
  }) : super.internal();

  final CreatePostNavigationService navigationService;
  final CreatePostBackendService backendService;

  @override
  CreatePostModel runNotifierBuild(
    covariant CreatePostControllerImpl notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      backendService: backendService,
    );
  }

  @override
  Override overrideWith(CreatePostControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: CreatePostControllerImplProvider._internal(
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
  AutoDisposeNotifierProviderElement<CreatePostControllerImpl, CreatePostModel>
      createElement() {
    return _CreatePostControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreatePostControllerImplProvider &&
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

mixin CreatePostControllerImplRef
    on AutoDisposeNotifierProviderRef<CreatePostModel> {
  /// The parameter `navigationService` of this provider.
  CreatePostNavigationService get navigationService;

  /// The parameter `backendService` of this provider.
  CreatePostBackendService get backendService;
}

class _CreatePostControllerImplProviderElement
    extends AutoDisposeNotifierProviderElement<CreatePostControllerImpl,
        CreatePostModel> with CreatePostControllerImplRef {
  _CreatePostControllerImplProviderElement(super.provider);

  @override
  CreatePostNavigationService get navigationService =>
      (origin as CreatePostControllerImplProvider).navigationService;
  @override
  CreatePostBackendService get backendService =>
      (origin as CreatePostControllerImplProvider).backendService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
