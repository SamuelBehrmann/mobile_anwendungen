// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_controller_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postControllerImplHash() =>
    r'61b8a45b3fac88207ad78bd39e676d4793cbcc3d';

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

abstract class _$PostControllerImpl
    extends BuildlessAutoDisposeNotifier<PostModel> {
  late final PostNavigationService navigationService;
  late final PostBackendService backendService;
  late final String postId;

  PostModel build({
    required PostNavigationService navigationService,
    required PostBackendService backendService,
    required String postId,
  });
}

/// See also [PostControllerImpl].
@ProviderFor(PostControllerImpl)
const postControllerImplProvider = PostControllerImplFamily();

/// See also [PostControllerImpl].
class PostControllerImplFamily extends Family<PostModel> {
  /// See also [PostControllerImpl].
  const PostControllerImplFamily();

  /// See also [PostControllerImpl].
  PostControllerImplProvider call({
    required PostNavigationService navigationService,
    required PostBackendService backendService,
    required String postId,
  }) {
    return PostControllerImplProvider(
      navigationService: navigationService,
      backendService: backendService,
      postId: postId,
    );
  }

  @override
  PostControllerImplProvider getProviderOverride(
    covariant PostControllerImplProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
      backendService: provider.backendService,
      postId: provider.postId,
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
  String? get name => r'postControllerImplProvider';
}

/// See also [PostControllerImpl].
class PostControllerImplProvider
    extends AutoDisposeNotifierProviderImpl<PostControllerImpl, PostModel> {
  /// See also [PostControllerImpl].
  PostControllerImplProvider({
    required PostNavigationService navigationService,
    required PostBackendService backendService,
    required String postId,
  }) : this._internal(
          () => PostControllerImpl()
            ..navigationService = navigationService
            ..backendService = backendService
            ..postId = postId,
          from: postControllerImplProvider,
          name: r'postControllerImplProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postControllerImplHash,
          dependencies: PostControllerImplFamily._dependencies,
          allTransitiveDependencies:
              PostControllerImplFamily._allTransitiveDependencies,
          navigationService: navigationService,
          backendService: backendService,
          postId: postId,
        );

  PostControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.backendService,
    required this.postId,
  }) : super.internal();

  final PostNavigationService navigationService;
  final PostBackendService backendService;
  final String postId;

  @override
  PostModel runNotifierBuild(
    covariant PostControllerImpl notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      backendService: backendService,
      postId: postId,
    );
  }

  @override
  Override overrideWith(PostControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostControllerImplProvider._internal(
        () => create()
          ..navigationService = navigationService
          ..backendService = backendService
          ..postId = postId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
        backendService: backendService,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PostControllerImpl, PostModel>
      createElement() {
    return _PostControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostControllerImplProvider &&
        other.navigationService == navigationService &&
        other.backendService == backendService &&
        other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, backendService.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostControllerImplRef on AutoDisposeNotifierProviderRef<PostModel> {
  /// The parameter `navigationService` of this provider.
  PostNavigationService get navigationService;

  /// The parameter `backendService` of this provider.
  PostBackendService get backendService;

  /// The parameter `postId` of this provider.
  String get postId;
}

class _PostControllerImplProviderElement
    extends AutoDisposeNotifierProviderElement<PostControllerImpl, PostModel>
    with PostControllerImplRef {
  _PostControllerImplProviderElement(super.provider);

  @override
  PostNavigationService get navigationService =>
      (origin as PostControllerImplProvider).navigationService;
  @override
  PostBackendService get backendService =>
      (origin as PostControllerImplProvider).backendService;
  @override
  String get postId => (origin as PostControllerImplProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
