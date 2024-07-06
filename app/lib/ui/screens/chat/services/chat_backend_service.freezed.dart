// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_backend_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatBackendServiceChat {
  String get chatId => throw _privateConstructorUsedError;
  ChatBackendServicePerson get chatPartner =>
      throw _privateConstructorUsedError;
  List<ChatBackendServiceMessage> get messages =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatBackendServiceChatCopyWith<ChatBackendServiceChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBackendServiceChatCopyWith<$Res> {
  factory $ChatBackendServiceChatCopyWith(ChatBackendServiceChat value,
          $Res Function(ChatBackendServiceChat) then) =
      _$ChatBackendServiceChatCopyWithImpl<$Res, ChatBackendServiceChat>;
  @useResult
  $Res call(
      {String chatId,
      ChatBackendServicePerson chatPartner,
      List<ChatBackendServiceMessage> messages});

  $ChatBackendServicePersonCopyWith<$Res> get chatPartner;
}

/// @nodoc
class _$ChatBackendServiceChatCopyWithImpl<$Res,
        $Val extends ChatBackendServiceChat>
    implements $ChatBackendServiceChatCopyWith<$Res> {
  _$ChatBackendServiceChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? chatPartner = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      chatPartner: null == chatPartner
          ? _value.chatPartner
          : chatPartner // ignore: cast_nullable_to_non_nullable
              as ChatBackendServicePerson,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatBackendServiceMessage>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatBackendServicePersonCopyWith<$Res> get chatPartner {
    return $ChatBackendServicePersonCopyWith<$Res>(_value.chatPartner, (value) {
      return _then(_value.copyWith(chatPartner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatBackendServiceChatImplCopyWith<$Res>
    implements $ChatBackendServiceChatCopyWith<$Res> {
  factory _$$ChatBackendServiceChatImplCopyWith(
          _$ChatBackendServiceChatImpl value,
          $Res Function(_$ChatBackendServiceChatImpl) then) =
      __$$ChatBackendServiceChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chatId,
      ChatBackendServicePerson chatPartner,
      List<ChatBackendServiceMessage> messages});

  @override
  $ChatBackendServicePersonCopyWith<$Res> get chatPartner;
}

/// @nodoc
class __$$ChatBackendServiceChatImplCopyWithImpl<$Res>
    extends _$ChatBackendServiceChatCopyWithImpl<$Res,
        _$ChatBackendServiceChatImpl>
    implements _$$ChatBackendServiceChatImplCopyWith<$Res> {
  __$$ChatBackendServiceChatImplCopyWithImpl(
      _$ChatBackendServiceChatImpl _value,
      $Res Function(_$ChatBackendServiceChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? chatPartner = null,
    Object? messages = null,
  }) {
    return _then(_$ChatBackendServiceChatImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      chatPartner: null == chatPartner
          ? _value.chatPartner
          : chatPartner // ignore: cast_nullable_to_non_nullable
              as ChatBackendServicePerson,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatBackendServiceMessage>,
    ));
  }
}

/// @nodoc

class _$ChatBackendServiceChatImpl implements _ChatBackendServiceChat {
  const _$ChatBackendServiceChatImpl(
      {required this.chatId,
      required this.chatPartner,
      required final List<ChatBackendServiceMessage> messages})
      : _messages = messages;

  @override
  final String chatId;
  @override
  final ChatBackendServicePerson chatPartner;
  final List<ChatBackendServiceMessage> _messages;
  @override
  List<ChatBackendServiceMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatBackendServiceChat(chatId: $chatId, chatPartner: $chatPartner, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatBackendServiceChatImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.chatPartner, chatPartner) ||
                other.chatPartner == chatPartner) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, chatPartner,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBackendServiceChatImplCopyWith<_$ChatBackendServiceChatImpl>
      get copyWith => __$$ChatBackendServiceChatImplCopyWithImpl<
          _$ChatBackendServiceChatImpl>(this, _$identity);
}

abstract class _ChatBackendServiceChat implements ChatBackendServiceChat {
  const factory _ChatBackendServiceChat(
          {required final String chatId,
          required final ChatBackendServicePerson chatPartner,
          required final List<ChatBackendServiceMessage> messages}) =
      _$ChatBackendServiceChatImpl;

  @override
  String get chatId;
  @override
  ChatBackendServicePerson get chatPartner;
  @override
  List<ChatBackendServiceMessage> get messages;
  @override
  @JsonKey(ignore: true)
  _$$ChatBackendServiceChatImplCopyWith<_$ChatBackendServiceChatImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatBackendServicePerson {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatBackendServicePersonCopyWith<ChatBackendServicePerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBackendServicePersonCopyWith<$Res> {
  factory $ChatBackendServicePersonCopyWith(ChatBackendServicePerson value,
          $Res Function(ChatBackendServicePerson) then) =
      _$ChatBackendServicePersonCopyWithImpl<$Res, ChatBackendServicePerson>;
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class _$ChatBackendServicePersonCopyWithImpl<$Res,
        $Val extends ChatBackendServicePerson>
    implements $ChatBackendServicePersonCopyWith<$Res> {
  _$ChatBackendServicePersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatBackendServicePersonImplCopyWith<$Res>
    implements $ChatBackendServicePersonCopyWith<$Res> {
  factory _$$ChatBackendServicePersonImplCopyWith(
          _$ChatBackendServicePersonImpl value,
          $Res Function(_$ChatBackendServicePersonImpl) then) =
      __$$ChatBackendServicePersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class __$$ChatBackendServicePersonImplCopyWithImpl<$Res>
    extends _$ChatBackendServicePersonCopyWithImpl<$Res,
        _$ChatBackendServicePersonImpl>
    implements _$$ChatBackendServicePersonImplCopyWith<$Res> {
  __$$ChatBackendServicePersonImplCopyWithImpl(
      _$ChatBackendServicePersonImpl _value,
      $Res Function(_$ChatBackendServicePersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$ChatBackendServicePersonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatBackendServicePersonImpl implements _ChatBackendServicePerson {
  const _$ChatBackendServicePersonImpl(
      {required this.id, required this.name, required this.imageUrl});

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ChatBackendServicePerson(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatBackendServicePersonImpl &&
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
  _$$ChatBackendServicePersonImplCopyWith<_$ChatBackendServicePersonImpl>
      get copyWith => __$$ChatBackendServicePersonImplCopyWithImpl<
          _$ChatBackendServicePersonImpl>(this, _$identity);
}

abstract class _ChatBackendServicePerson implements ChatBackendServicePerson {
  const factory _ChatBackendServicePerson(
      {required final String id,
      required final String name,
      required final String imageUrl}) = _$ChatBackendServicePersonImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ChatBackendServicePersonImplCopyWith<_$ChatBackendServicePersonImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatBackendServiceMessage {
  String get content => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatBackendServiceMessageCopyWith<ChatBackendServiceMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBackendServiceMessageCopyWith<$Res> {
  factory $ChatBackendServiceMessageCopyWith(ChatBackendServiceMessage value,
          $Res Function(ChatBackendServiceMessage) then) =
      _$ChatBackendServiceMessageCopyWithImpl<$Res, ChatBackendServiceMessage>;
  @useResult
  $Res call(
      {String content, String authorId, String messageId, DateTime timestamp});
}

/// @nodoc
class _$ChatBackendServiceMessageCopyWithImpl<$Res,
        $Val extends ChatBackendServiceMessage>
    implements $ChatBackendServiceMessageCopyWith<$Res> {
  _$ChatBackendServiceMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? authorId = null,
    Object? messageId = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatBackendServiceMessageImplCopyWith<$Res>
    implements $ChatBackendServiceMessageCopyWith<$Res> {
  factory _$$ChatBackendServiceMessageImplCopyWith(
          _$ChatBackendServiceMessageImpl value,
          $Res Function(_$ChatBackendServiceMessageImpl) then) =
      __$$ChatBackendServiceMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content, String authorId, String messageId, DateTime timestamp});
}

/// @nodoc
class __$$ChatBackendServiceMessageImplCopyWithImpl<$Res>
    extends _$ChatBackendServiceMessageCopyWithImpl<$Res,
        _$ChatBackendServiceMessageImpl>
    implements _$$ChatBackendServiceMessageImplCopyWith<$Res> {
  __$$ChatBackendServiceMessageImplCopyWithImpl(
      _$ChatBackendServiceMessageImpl _value,
      $Res Function(_$ChatBackendServiceMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? authorId = null,
    Object? messageId = null,
    Object? timestamp = null,
  }) {
    return _then(_$ChatBackendServiceMessageImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChatBackendServiceMessageImpl implements _ChatBackendServiceMessage {
  const _$ChatBackendServiceMessageImpl(
      {required this.content,
      required this.authorId,
      required this.messageId,
      required this.timestamp});

  @override
  final String content;
  @override
  final String authorId;
  @override
  final String messageId;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'ChatBackendServiceMessage(content: $content, authorId: $authorId, messageId: $messageId, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatBackendServiceMessageImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, content, authorId, messageId, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBackendServiceMessageImplCopyWith<_$ChatBackendServiceMessageImpl>
      get copyWith => __$$ChatBackendServiceMessageImplCopyWithImpl<
          _$ChatBackendServiceMessageImpl>(this, _$identity);
}

abstract class _ChatBackendServiceMessage implements ChatBackendServiceMessage {
  const factory _ChatBackendServiceMessage(
      {required final String content,
      required final String authorId,
      required final String messageId,
      required final DateTime timestamp}) = _$ChatBackendServiceMessageImpl;

  @override
  String get content;
  @override
  String get authorId;
  @override
  String get messageId;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$ChatBackendServiceMessageImplCopyWith<_$ChatBackendServiceMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
