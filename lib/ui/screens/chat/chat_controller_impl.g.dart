// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_controller_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatControllerImplHash() =>
    r'3ffd4c2f5169e0e645a913bed0ecca36723b8fdb';

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

abstract class _$ChatControllerImpl
    extends BuildlessAutoDisposeNotifier<ChatModel> {
  late final String chatId;
  late final ChatBackendService backendService;

  ChatModel build({
    required String chatId,
    required ChatBackendService backendService,
  });
}

/// See also [ChatControllerImpl].
@ProviderFor(ChatControllerImpl)
const chatControllerImplProvider = ChatControllerImplFamily();

/// See also [ChatControllerImpl].
class ChatControllerImplFamily extends Family<ChatModel> {
  /// See also [ChatControllerImpl].
  const ChatControllerImplFamily();

  /// See also [ChatControllerImpl].
  ChatControllerImplProvider call({
    required String chatId,
    required ChatBackendService backendService,
  }) {
    return ChatControllerImplProvider(
      chatId: chatId,
      backendService: backendService,
    );
  }

  @override
  ChatControllerImplProvider getProviderOverride(
    covariant ChatControllerImplProvider provider,
  ) {
    return call(
      chatId: provider.chatId,
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
  String? get name => r'chatControllerImplProvider';
}

/// See also [ChatControllerImpl].
class ChatControllerImplProvider
    extends AutoDisposeNotifierProviderImpl<ChatControllerImpl, ChatModel> {
  /// See also [ChatControllerImpl].
  ChatControllerImplProvider({
    required String chatId,
    required ChatBackendService backendService,
  }) : this._internal(
          () => ChatControllerImpl()
            ..chatId = chatId
            ..backendService = backendService,
          from: chatControllerImplProvider,
          name: r'chatControllerImplProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatControllerImplHash,
          dependencies: ChatControllerImplFamily._dependencies,
          allTransitiveDependencies:
              ChatControllerImplFamily._allTransitiveDependencies,
          chatId: chatId,
          backendService: backendService,
        );

  ChatControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.chatId,
    required this.backendService,
  }) : super.internal();

  final String chatId;
  final ChatBackendService backendService;

  @override
  ChatModel runNotifierBuild(
    covariant ChatControllerImpl notifier,
  ) {
    return notifier.build(
      chatId: chatId,
      backendService: backendService,
    );
  }

  @override
  Override overrideWith(ChatControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatControllerImplProvider._internal(
        () => create()
          ..chatId = chatId
          ..backendService = backendService,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        chatId: chatId,
        backendService: backendService,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ChatControllerImpl, ChatModel>
      createElement() {
    return _ChatControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatControllerImplProvider &&
        other.chatId == chatId &&
        other.backendService == backendService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, chatId.hashCode);
    hash = _SystemHash.combine(hash, backendService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChatControllerImplRef on AutoDisposeNotifierProviderRef<ChatModel> {
  /// The parameter `chatId` of this provider.
  String get chatId;

  /// The parameter `backendService` of this provider.
  ChatBackendService get backendService;
}

class _ChatControllerImplProviderElement
    extends AutoDisposeNotifierProviderElement<ChatControllerImpl, ChatModel>
    with ChatControllerImplRef {
  _ChatControllerImplProviderElement(super.provider);

  @override
  String get chatId => (origin as ChatControllerImplProvider).chatId;
  @override
  ChatBackendService get backendService =>
      (origin as ChatControllerImplProvider).backendService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
