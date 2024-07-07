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
  String get chatId => throw _privateConstructorUsedError;
  String get activeUserId => throw _privateConstructorUsedError;
  ChatModelPerson get chatPartner => throw _privateConstructorUsedError;
  List<MapEntry<String, List<ChatModelMessage>>> get groupedMessages =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {String chatId,
      String activeUserId,
      ChatModelPerson chatPartner,
      List<MapEntry<String, List<ChatModelMessage>>> groupedMessages});

  $ChatModelPersonCopyWith<$Res> get chatPartner;
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? activeUserId = null,
    Object? chatPartner = null,
    Object? groupedMessages = null,
  }) {
    return _then(_value.copyWith(
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
              as ChatModelPerson,
      groupedMessages: null == groupedMessages
          ? _value.groupedMessages
          : groupedMessages // ignore: cast_nullable_to_non_nullable
              as List<MapEntry<String, List<ChatModelMessage>>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatModelPersonCopyWith<$Res> get chatPartner {
    return $ChatModelPersonCopyWith<$Res>(_value.chatPartner, (value) {
      return _then(_value.copyWith(chatPartner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatsModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatsModelImplCopyWith(
          _$ChatsModelImpl value, $Res Function(_$ChatsModelImpl) then) =
      __$$ChatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chatId,
      String activeUserId,
      ChatModelPerson chatPartner,
      List<MapEntry<String, List<ChatModelMessage>>> groupedMessages});

  @override
  $ChatModelPersonCopyWith<$Res> get chatPartner;
}

/// @nodoc
class __$$ChatsModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatsModelImpl>
    implements _$$ChatsModelImplCopyWith<$Res> {
  __$$ChatsModelImplCopyWithImpl(
      _$ChatsModelImpl _value, $Res Function(_$ChatsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? activeUserId = null,
    Object? chatPartner = null,
    Object? groupedMessages = null,
  }) {
    return _then(_$ChatsModelImpl(
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
              as ChatModelPerson,
      groupedMessages: null == groupedMessages
          ? _value._groupedMessages
          : groupedMessages // ignore: cast_nullable_to_non_nullable
              as List<MapEntry<String, List<ChatModelMessage>>>,
    ));
  }
}

/// @nodoc

class _$ChatsModelImpl implements _ChatsModel {
  const _$ChatsModelImpl(
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
  final ChatModelPerson chatPartner;
  final List<MapEntry<String, List<ChatModelMessage>>> _groupedMessages;
  @override
  List<MapEntry<String, List<ChatModelMessage>>> get groupedMessages {
    if (_groupedMessages is EqualUnmodifiableListView) return _groupedMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupedMessages);
  }

  @override
  String toString() {
    return 'ChatModel(chatId: $chatId, activeUserId: $activeUserId, chatPartner: $chatPartner, groupedMessages: $groupedMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsModelImpl &&
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
  _$$ChatsModelImplCopyWith<_$ChatsModelImpl> get copyWith =>
      __$$ChatsModelImplCopyWithImpl<_$ChatsModelImpl>(this, _$identity);
}

abstract class _ChatsModel implements ChatModel {
  const factory _ChatsModel(
      {required final String chatId,
      required final String activeUserId,
      required final ChatModelPerson chatPartner,
      required final List<MapEntry<String, List<ChatModelMessage>>>
          groupedMessages}) = _$ChatsModelImpl;

  @override
  String get chatId;
  @override
  String get activeUserId;
  @override
  ChatModelPerson get chatPartner;
  @override
  List<MapEntry<String, List<ChatModelMessage>>> get groupedMessages;
  @override
  @JsonKey(ignore: true)
  _$$ChatsModelImplCopyWith<_$ChatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatModelPerson {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatModelPersonCopyWith<ChatModelPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelPersonCopyWith<$Res> {
  factory $ChatModelPersonCopyWith(
          ChatModelPerson value, $Res Function(ChatModelPerson) then) =
      _$ChatModelPersonCopyWithImpl<$Res, ChatModelPerson>;
  @useResult
  $Res call({String id, String name, String? imageUrl});
}

/// @nodoc
class _$ChatModelPersonCopyWithImpl<$Res, $Val extends ChatModelPerson>
    implements $ChatModelPersonCopyWith<$Res> {
  _$ChatModelPersonCopyWithImpl(this._value, this._then);

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
abstract class _$$ChatModelPersonImplCopyWith<$Res>
    implements $ChatModelPersonCopyWith<$Res> {
  factory _$$ChatModelPersonImplCopyWith(_$ChatModelPersonImpl value,
          $Res Function(_$ChatModelPersonImpl) then) =
      __$$ChatModelPersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? imageUrl});
}

/// @nodoc
class __$$ChatModelPersonImplCopyWithImpl<$Res>
    extends _$ChatModelPersonCopyWithImpl<$Res, _$ChatModelPersonImpl>
    implements _$$ChatModelPersonImplCopyWith<$Res> {
  __$$ChatModelPersonImplCopyWithImpl(
      _$ChatModelPersonImpl _value, $Res Function(_$ChatModelPersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$ChatModelPersonImpl(
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

class _$ChatModelPersonImpl implements _ChatModelPerson {
  const _$ChatModelPersonImpl(
      {required this.id, required this.name, required this.imageUrl});

  @override
  final String id;
  @override
  final String name;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ChatModelPerson(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelPersonImpl &&
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
  _$$ChatModelPersonImplCopyWith<_$ChatModelPersonImpl> get copyWith =>
      __$$ChatModelPersonImplCopyWithImpl<_$ChatModelPersonImpl>(
          this, _$identity);
}

abstract class _ChatModelPerson implements ChatModelPerson {
  const factory _ChatModelPerson(
      {required final String id,
      required final String name,
      required final String? imageUrl}) = _$ChatModelPersonImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ChatModelPersonImplCopyWith<_$ChatModelPersonImpl> get copyWith =>
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

class _$ChatModelMessageImpl implements _ChatModelMessage {
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
  String toString() {
    return 'ChatModelMessage(content: $content, messageId: $messageId, authorId: $authorId, timestamp: $timestamp)';
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
