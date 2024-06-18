// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_controller_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createPostControllerImplHash() =>
    r'287464ac324ded4173b1f90aa6412b819cb8ce87';

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

  CreatePostModel build({
    required CreatePostNavigationService navigationService,
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
  }) {
    return CreatePostControllerImplProvider(
      navigationService: navigationService,
    );
  }

  @override
  CreatePostControllerImplProvider getProviderOverride(
    covariant CreatePostControllerImplProvider provider,
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
  String? get name => r'createPostControllerImplProvider';
}

/// See also [CreatePostControllerImpl].
class CreatePostControllerImplProvider extends AutoDisposeNotifierProviderImpl<
    CreatePostControllerImpl, CreatePostModel> {
  /// See also [CreatePostControllerImpl].
  CreatePostControllerImplProvider({
    required CreatePostNavigationService navigationService,
  }) : this._internal(
          () =>
              CreatePostControllerImpl()..navigationService = navigationService,
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
        );

  CreatePostControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
  }) : super.internal();

  final CreatePostNavigationService navigationService;

  @override
  CreatePostModel runNotifierBuild(
    covariant CreatePostControllerImpl notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
    );
  }

  @override
  Override overrideWith(CreatePostControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: CreatePostControllerImplProvider._internal(
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
  AutoDisposeNotifierProviderElement<CreatePostControllerImpl, CreatePostModel>
      createElement() {
    return _CreatePostControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreatePostControllerImplProvider &&
        other.navigationService == navigationService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreatePostControllerImplRef
    on AutoDisposeNotifierProviderRef<CreatePostModel> {
  /// The parameter `navigationService` of this provider.
  CreatePostNavigationService get navigationService;
}

class _CreatePostControllerImplProviderElement
    extends AutoDisposeNotifierProviderElement<CreatePostControllerImpl,
        CreatePostModel> with CreatePostControllerImplRef {
  _CreatePostControllerImplProviderElement(super.provider);

  @override
  CreatePostNavigationService get navigationService =>
      (origin as CreatePostControllerImplProvider).navigationService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
