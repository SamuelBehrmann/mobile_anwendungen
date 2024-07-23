// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchControllerImplHash() =>
    r'd13f6a1e3bd50c6c54ea6bcc00981f484b387b6a';

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

abstract class _$SearchControllerImpl
    extends BuildlessAutoDisposeNotifier<SearchModel> {
  late final SearchNavigationService navigationService;
  late final SearchBackendService backendService;

  SearchModel build({
    required SearchNavigationService navigationService,
    required SearchBackendService backendService,
  });
}

/// See also [SearchControllerImpl].
@ProviderFor(SearchControllerImpl)
const searchControllerImplProvider = SearchControllerImplFamily();

/// See also [SearchControllerImpl].
class SearchControllerImplFamily extends Family<SearchModel> {
  /// See also [SearchControllerImpl].
  const SearchControllerImplFamily();

  /// See also [SearchControllerImpl].
  SearchControllerImplProvider call({
    required SearchNavigationService navigationService,
    required SearchBackendService backendService,
  }) {
    return SearchControllerImplProvider(
      navigationService: navigationService,
      backendService: backendService,
    );
  }

  @override
  SearchControllerImplProvider getProviderOverride(
    covariant SearchControllerImplProvider provider,
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
  String? get name => r'searchControllerImplProvider';
}

/// See also [SearchControllerImpl].
class SearchControllerImplProvider
    extends AutoDisposeNotifierProviderImpl<SearchControllerImpl, SearchModel> {
  /// See also [SearchControllerImpl].
  SearchControllerImplProvider({
    required SearchNavigationService navigationService,
    required SearchBackendService backendService,
  }) : this._internal(
          () => SearchControllerImpl()
            ..navigationService = navigationService
            ..backendService = backendService,
          from: searchControllerImplProvider,
          name: r'searchControllerImplProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchControllerImplHash,
          dependencies: SearchControllerImplFamily._dependencies,
          allTransitiveDependencies:
              SearchControllerImplFamily._allTransitiveDependencies,
          navigationService: navigationService,
          backendService: backendService,
        );

  SearchControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.backendService,
  }) : super.internal();

  final SearchNavigationService navigationService;
  final SearchBackendService backendService;

  @override
  SearchModel runNotifierBuild(
    covariant SearchControllerImpl notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      backendService: backendService,
    );
  }

  @override
  Override overrideWith(SearchControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchControllerImplProvider._internal(
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
  AutoDisposeNotifierProviderElement<SearchControllerImpl, SearchModel>
      createElement() {
    return _SearchControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchControllerImplProvider &&
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

mixin SearchControllerImplRef on AutoDisposeNotifierProviderRef<SearchModel> {
  /// The parameter `navigationService` of this provider.
  SearchNavigationService get navigationService;

  /// The parameter `backendService` of this provider.
  SearchBackendService get backendService;
}

class _SearchControllerImplProviderElement
    extends AutoDisposeNotifierProviderElement<SearchControllerImpl,
        SearchModel> with SearchControllerImplRef {
  _SearchControllerImplProviderElement(super.provider);

  @override
  SearchNavigationService get navigationService =>
      (origin as SearchControllerImplProvider).navigationService;
  @override
  SearchBackendService get backendService =>
      (origin as SearchControllerImplProvider).backendService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
