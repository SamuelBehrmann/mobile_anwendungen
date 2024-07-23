// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)
        data,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)?
        data,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)?
        data,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatModelData value) data,
    required TResult Function(ChatsModelLoading value) loading,
    required TResult Function(ChatsModelError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatModelData value)? data,
    TResult? Function(ChatsModelLoading value)? loading,
    TResult? Function(ChatsModelError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatModelData value)? data,
    TResult Function(ChatsModelLoading value)? loading,
    TResult Function(ChatsModelError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatModelDataImplCopyWith<$Res> {
  factory _$$ChatModelDataImplCopyWith(
          _$ChatModelDataImpl value, $Res Function(_$ChatModelDataImpl) then) =
      __$$ChatModelDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String chatId,
      String activeUserId,
      ChatModelUser chatPartner,
      List<MapEntry<String, List<ChatModelMessage>>> groupedMessages});

  $ChatModelUserCopyWith<$Res> get chatPartner;
}

/// @nodoc
class __$$ChatModelDataImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelDataImpl>
    implements _$$ChatModelDataImplCopyWith<$Res> {
  __$$ChatModelDataImplCopyWithImpl(
      _$ChatModelDataImpl _value, $Res Function(_$ChatModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? activeUserId = null,
    Object? chatPartner = null,
    Object? groupedMessages = null,
  }) {
    return _then(_$ChatModelDataImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      activeUserId: null == activeUserId
          ? _value.activeUserId
          : activeUserId // ignore: cast_nullable_to_non_nullable
              as String,
      chatPartner: null == chatPartner
          ? _value.chatPartner
          : chatPartner // ignore: cast_nullable_to_non_nullable
              as ChatModelUser,
      groupedMessages: null == groupedMessages
          ? _value._groupedMessages
          : groupedMessages // ignore: cast_nullable_to_non_nullable
              as List<MapEntry<String, List<ChatModelMessage>>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatModelUserCopyWith<$Res> get chatPartner {
    return $ChatModelUserCopyWith<$Res>(_value.chatPartner, (value) {
      return _then(_value.copyWith(chatPartner: value));
    });
  }
}

/// @nodoc

class _$ChatModelDataImpl
    with DiagnosticableTreeMixin
    implements ChatModelData {
  const _$ChatModelDataImpl(
      {required this.chatId,
      required this.activeUserId,
      required this.chatPartner,
      required final List<MapEntry<String, List<ChatModelMessage>>>
          groupedMessages})
      : _groupedMessages = groupedMessages;

  @override
  final String chatId;
  @override
  final String activeUserId;
  @override
  final ChatModelUser chatPartner;
  final List<MapEntry<String, List<ChatModelMessage>>> _groupedMessages;
  @override
  List<MapEntry<String, List<ChatModelMessage>>> get groupedMessages {
    if (_groupedMessages is EqualUnmodifiableListView) return _groupedMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupedMessages);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatModel.data(chatId: $chatId, activeUserId: $activeUserId, chatPartner: $chatPartner, groupedMessages: $groupedMessages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatModel.data'))
      ..add(DiagnosticsProperty('chatId', chatId))
      ..add(DiagnosticsProperty('activeUserId', activeUserId))
      ..add(DiagnosticsProperty('chatPartner', chatPartner))
      ..add(DiagnosticsProperty('groupedMessages', groupedMessages));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelDataImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.activeUserId, activeUserId) ||
                other.activeUserId == activeUserId) &&
            (identical(other.chatPartner, chatPartner) ||
                other.chatPartner == chatPartner) &&
            const DeepCollectionEquality()
                .equals(other._groupedMessages, _groupedMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, activeUserId,
      chatPartner, const DeepCollectionEquality().hash(_groupedMessages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelDataImplCopyWith<_$ChatModelDataImpl> get copyWith =>
      __$$ChatModelDataImplCopyWithImpl<_$ChatModelDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)
        data,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return data(chatId, activeUserId, chatPartner, groupedMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)?
        data,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return data?.call(chatId, activeUserId, chatPartner, groupedMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)?
        data,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(chatId, activeUserId, chatPartner, groupedMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatModelData value) data,
    required TResult Function(ChatsModelLoading value) loading,
    required TResult Function(ChatsModelError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatModelData value)? data,
    TResult? Function(ChatsModelLoading value)? loading,
    TResult? Function(ChatsModelError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatModelData value)? data,
    TResult Function(ChatsModelLoading value)? loading,
    TResult Function(ChatsModelError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ChatModelData implements ChatModel {
  const factory ChatModelData(
      {required final String chatId,
      required final String activeUserId,
      required final ChatModelUser chatPartner,
      required final List<MapEntry<String, List<ChatModelMessage>>>
          groupedMessages}) = _$ChatModelDataImpl;

  String get chatId;
  String get activeUserId;
  ChatModelUser get chatPartner;
  List<MapEntry<String, List<ChatModelMessage>>> get groupedMessages;
  @JsonKey(ignore: true)
  _$$ChatModelDataImplCopyWith<_$ChatModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatsModelLoadingImplCopyWith<$Res> {
  factory _$$ChatsModelLoadingImplCopyWith(_$ChatsModelLoadingImpl value,
          $Res Function(_$ChatsModelLoadingImpl) then) =
      __$$ChatsModelLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatsModelLoadingImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatsModelLoadingImpl>
    implements _$$ChatsModelLoadingImplCopyWith<$Res> {
  __$$ChatsModelLoadingImplCopyWithImpl(_$ChatsModelLoadingImpl _value,
      $Res Function(_$ChatsModelLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatsModelLoadingImpl
    with DiagnosticableTreeMixin
    implements ChatsModelLoading {
  const _$ChatsModelLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatModel.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatModel.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatsModelLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)
        data,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)?
        data,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)?
        data,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatModelData value) data,
    required TResult Function(ChatsModelLoading value) loading,
    required TResult Function(ChatsModelError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatModelData value)? data,
    TResult? Function(ChatsModelLoading value)? loading,
    TResult? Function(ChatsModelError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatModelData value)? data,
    TResult Function(ChatsModelLoading value)? loading,
    TResult Function(ChatsModelError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatsModelLoading implements ChatModel {
  const factory ChatsModelLoading() = _$ChatsModelLoadingImpl;
}

/// @nodoc
abstract class _$$ChatsModelErrorImplCopyWith<$Res> {
  factory _$$ChatsModelErrorImplCopyWith(_$ChatsModelErrorImpl value,
          $Res Function(_$ChatsModelErrorImpl) then) =
      __$$ChatsModelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ChatsModelErrorImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatsModelErrorImpl>
    implements _$$ChatsModelErrorImplCopyWith<$Res> {
  __$$ChatsModelErrorImplCopyWithImpl(
      _$ChatsModelErrorImpl _value, $Res Function(_$ChatsModelErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ChatsModelErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatsModelErrorImpl
    with DiagnosticableTreeMixin
    implements ChatsModelError {
  const _$ChatsModelErrorImpl({required this.message});

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatModel.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatModel.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsModelErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsModelErrorImplCopyWith<_$ChatsModelErrorImpl> get copyWith =>
      __$$ChatsModelErrorImplCopyWithImpl<_$ChatsModelErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)
        data,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)?
        data,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String chatId,
            String activeUserId,
            ChatModelUser chatPartner,
            List<MapEntry<String, List<ChatModelMessage>>> groupedMessages)?
        data,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatModelData value) data,
    required TResult Function(ChatsModelLoading value) loading,
    required TResult Function(ChatsModelError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatModelData value)? data,
    TResult? Function(ChatsModelLoading value)? loading,
    TResult? Function(ChatsModelError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatModelData value)? data,
    TResult Function(ChatsModelLoading value)? loading,
    TResult Function(ChatsModelError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatsModelError implements ChatModel {
  const factory ChatsModelError({required final String? message}) =
      _$ChatsModelErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ChatsModelErrorImplCopyWith<_$ChatsModelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatModelUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatModelUserCopyWith<ChatModelUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelUserCopyWith<$Res> {
  factory $ChatModelUserCopyWith(
          ChatModelUser value, $Res Function(ChatModelUser) then) =
      _$ChatModelUserCopyWithImpl<$Res, ChatModelUser>;
  @useResult
  $Res call({String id, String name, String? imageUrl});
}

/// @nodoc
class _$ChatModelUserCopyWithImpl<$Res, $Val extends ChatModelUser>
    implements $ChatModelUserCopyWith<$Res> {
  _$ChatModelUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatModelUserImplCopyWith<$Res>
    implements $ChatModelUserCopyWith<$Res> {
  factory _$$ChatModelUserImplCopyWith(
          _$ChatModelUserImpl value, $Res Function(_$ChatModelUserImpl) then) =
      __$$ChatModelUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? imageUrl});
}

/// @nodoc
class __$$ChatModelUserImplCopyWithImpl<$Res>
    extends _$ChatModelUserCopyWithImpl<$Res, _$ChatModelUserImpl>
    implements _$$ChatModelUserImplCopyWith<$Res> {
  __$$ChatModelUserImplCopyWithImpl(
      _$ChatModelUserImpl _value, $Res Function(_$ChatModelUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$ChatModelUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatModelUserImpl
    with DiagnosticableTreeMixin
    implements _ChatModelUser {
  const _$ChatModelUserImpl(
      {required this.id, required this.name, required this.imageUrl});

  @override
  final String id;
  @override
  final String name;
  @override
  final String? imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatModelUser(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatModelUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelUserImplCopyWith<_$ChatModelUserImpl> get copyWith =>
      __$$ChatModelUserImplCopyWithImpl<_$ChatModelUserImpl>(this, _$identity);
}

abstract class _ChatModelUser implements ChatModelUser {
  const factory _ChatModelUser(
      {required final String id,
      required final String name,
      required final String? imageUrl}) = _$ChatModelUserImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ChatModelUserImplCopyWith<_$ChatModelUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatModelMessage {
  String get content => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatModelMessageCopyWith<ChatModelMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelMessageCopyWith<$Res> {
  factory $ChatModelMessageCopyWith(
          ChatModelMessage value, $Res Function(ChatModelMessage) then) =
      _$ChatModelMessageCopyWithImpl<$Res, ChatModelMessage>;
  @useResult
  $Res call(
      {String content, String messageId, String authorId, DateTime timestamp});
}

/// @nodoc
class _$ChatModelMessageCopyWithImpl<$Res, $Val extends ChatModelMessage>
    implements $ChatModelMessageCopyWith<$Res> {
  _$ChatModelMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? messageId = null,
    Object? authorId = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatModelMessageImplCopyWith<$Res>
    implements $ChatModelMessageCopyWith<$Res> {
  factory _$$ChatModelMessageImplCopyWith(_$ChatModelMessageImpl value,
          $Res Function(_$ChatModelMessageImpl) then) =
      __$$ChatModelMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content, String messageId, String authorId, DateTime timestamp});
}

/// @nodoc
class __$$ChatModelMessageImplCopyWithImpl<$Res>
    extends _$ChatModelMessageCopyWithImpl<$Res, _$ChatModelMessageImpl>
    implements _$$ChatModelMessageImplCopyWith<$Res> {
  __$$ChatModelMessageImplCopyWithImpl(_$ChatModelMessageImpl _value,
      $Res Function(_$ChatModelMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? messageId = null,
    Object? authorId = null,
    Object? timestamp = null,
  }) {
    return _then(_$ChatModelMessageImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChatModelMessageImpl
    with DiagnosticableTreeMixin
    implements _ChatModelMessage {
  const _$ChatModelMessageImpl(
      {required this.content,
      required this.messageId,
      required this.authorId,
      required this.timestamp});

  @override
  final String content;
  @override
  final String messageId;
  @override
  final String authorId;
  @override
  final DateTime timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatModelMessage(content: $content, messageId: $messageId, authorId: $authorId, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatModelMessage'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('messageId', messageId))
      ..add(DiagnosticsProperty('authorId', authorId))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelMessageImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, content, messageId, authorId, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelMessageImplCopyWith<_$ChatModelMessageImpl> get copyWith =>
      __$$ChatModelMessageImplCopyWithImpl<_$ChatModelMessageImpl>(
          this, _$identity);
}

abstract class _ChatModelMessage implements ChatModelMessage {
  const factory _ChatModelMessage(
      {required final String content,
      required final String messageId,
      required final String authorId,
      required final DateTime timestamp}) = _$ChatModelMessageImpl;

  @override
  String get content;
  @override
  String get messageId;
  @override
  String get authorId;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$ChatModelMessageImplCopyWith<_$ChatModelMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
