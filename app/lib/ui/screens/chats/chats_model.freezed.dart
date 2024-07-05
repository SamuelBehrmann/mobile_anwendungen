// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatsModel {
  List<ChatsModelChat> get chats => throw _privateConstructorUsedError;
  List<ChatsModelChat> get filteredChats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatsModelCopyWith<ChatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsModelCopyWith<$Res> {
  factory $ChatsModelCopyWith(
          ChatsModel value, $Res Function(ChatsModel) then) =
      _$ChatsModelCopyWithImpl<$Res, ChatsModel>;
  @useResult
  $Res call({List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats});
}

/// @nodoc
class _$ChatsModelCopyWithImpl<$Res, $Val extends ChatsModel>
    implements $ChatsModelCopyWith<$Res> {
  _$ChatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? filteredChats = null,
  }) {
    return _then(_value.copyWith(
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatsModelChat>,
      filteredChats: null == filteredChats
          ? _value.filteredChats
          : filteredChats // ignore: cast_nullable_to_non_nullable
              as List<ChatsModelChat>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatsModelImplCopyWith<$Res>
    implements $ChatsModelCopyWith<$Res> {
  factory _$$ChatsModelImplCopyWith(
          _$ChatsModelImpl value, $Res Function(_$ChatsModelImpl) then) =
      __$$ChatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats});
}

/// @nodoc
class __$$ChatsModelImplCopyWithImpl<$Res>
    extends _$ChatsModelCopyWithImpl<$Res, _$ChatsModelImpl>
    implements _$$ChatsModelImplCopyWith<$Res> {
  __$$ChatsModelImplCopyWithImpl(
      _$ChatsModelImpl _value, $Res Function(_$ChatsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? filteredChats = null,
  }) {
    return _then(_$ChatsModelImpl(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatsModelChat>,
      filteredChats: null == filteredChats
          ? _value._filteredChats
          : filteredChats // ignore: cast_nullable_to_non_nullable
              as List<ChatsModelChat>,
    ));
  }
}

/// @nodoc

class _$ChatsModelImpl implements _ChatsModel {
  const _$ChatsModelImpl(
      {required final List<ChatsModelChat> chats,
      final List<ChatsModelChat> filteredChats = const <ChatsModelChat>[]})
      : _chats = chats,
        _filteredChats = filteredChats;

  final List<ChatsModelChat> _chats;
  @override
  List<ChatsModelChat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  final List<ChatsModelChat> _filteredChats;
  @override
  @JsonKey()
  List<ChatsModelChat> get filteredChats {
    if (_filteredChats is EqualUnmodifiableListView) return _filteredChats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredChats);
  }

  @override
  String toString() {
    return 'ChatsModel(chats: $chats, filteredChats: $filteredChats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsModelImpl &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            const DeepCollectionEquality()
                .equals(other._filteredChats, _filteredChats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chats),
      const DeepCollectionEquality().hash(_filteredChats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsModelImplCopyWith<_$ChatsModelImpl> get copyWith =>
      __$$ChatsModelImplCopyWithImpl<_$ChatsModelImpl>(this, _$identity);
}

abstract class _ChatsModel implements ChatsModel {
  const factory _ChatsModel(
      {required final List<ChatsModelChat> chats,
      final List<ChatsModelChat> filteredChats}) = _$ChatsModelImpl;

  @override
  List<ChatsModelChat> get chats;
  @override
  List<ChatsModelChat> get filteredChats;
  @override
  @JsonKey(ignore: true)
  _$$ChatsModelImplCopyWith<_$ChatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatsModelChat {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get profilePicturePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatsModelChatCopyWith<ChatsModelChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsModelChatCopyWith<$Res> {
  factory $ChatsModelChatCopyWith(
          ChatsModelChat value, $Res Function(ChatsModelChat) then) =
      _$ChatsModelChatCopyWithImpl<$Res, ChatsModelChat>;
  @useResult
  $Res call(
      {String id, String name, String message, String? profilePicturePath});
}

/// @nodoc
class _$ChatsModelChatCopyWithImpl<$Res, $Val extends ChatsModelChat>
    implements $ChatsModelChatCopyWith<$Res> {
  _$ChatsModelChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? message = null,
    Object? profilePicturePath = freezed,
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicturePath: freezed == profilePicturePath
          ? _value.profilePicturePath
          : profilePicturePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatsModelChatImplCopyWith<$Res>
    implements $ChatsModelChatCopyWith<$Res> {
  factory _$$ChatsModelChatImplCopyWith(_$ChatsModelChatImpl value,
          $Res Function(_$ChatsModelChatImpl) then) =
      __$$ChatsModelChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String message, String? profilePicturePath});
}

/// @nodoc
class __$$ChatsModelChatImplCopyWithImpl<$Res>
    extends _$ChatsModelChatCopyWithImpl<$Res, _$ChatsModelChatImpl>
    implements _$$ChatsModelChatImplCopyWith<$Res> {
  __$$ChatsModelChatImplCopyWithImpl(
      _$ChatsModelChatImpl _value, $Res Function(_$ChatsModelChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? message = null,
    Object? profilePicturePath = freezed,
  }) {
    return _then(_$ChatsModelChatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicturePath: freezed == profilePicturePath
          ? _value.profilePicturePath
          : profilePicturePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatsModelChatImpl implements _ChatsModelChat {
  const _$ChatsModelChatImpl(
      {required this.id,
      required this.name,
      required this.message,
      this.profilePicturePath});

  @override
  final String id;
  @override
  final String name;
  @override
  final String message;
  @override
  final String? profilePicturePath;

  @override
  String toString() {
    return 'ChatsModelChat(id: $id, name: $name, message: $message, profilePicturePath: $profilePicturePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsModelChatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.profilePicturePath, profilePicturePath) ||
                other.profilePicturePath == profilePicturePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, message, profilePicturePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsModelChatImplCopyWith<_$ChatsModelChatImpl> get copyWith =>
      __$$ChatsModelChatImplCopyWithImpl<_$ChatsModelChatImpl>(
          this, _$identity);
}

abstract class _ChatsModelChat implements ChatsModelChat {
  const factory _ChatsModelChat(
      {required final String id,
      required final String name,
      required final String message,
      final String? profilePicturePath}) = _$ChatsModelChatImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get message;
  @override
  String? get profilePicturePath;
  @override
  @JsonKey(ignore: true)
  _$$ChatsModelChatImplCopyWith<_$ChatsModelChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
