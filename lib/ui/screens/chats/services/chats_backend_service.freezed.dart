// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_backend_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatsBackendServiceChat {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get profilePicturePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatsBackendServiceChatCopyWith<ChatsBackendServiceChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsBackendServiceChatCopyWith<$Res> {
  factory $ChatsBackendServiceChatCopyWith(ChatsBackendServiceChat value,
          $Res Function(ChatsBackendServiceChat) then) =
      _$ChatsBackendServiceChatCopyWithImpl<$Res, ChatsBackendServiceChat>;
  @useResult
  $Res call(
      {String id, String name, String message, String? profilePicturePath});
}

/// @nodoc
class _$ChatsBackendServiceChatCopyWithImpl<$Res,
        $Val extends ChatsBackendServiceChat>
    implements $ChatsBackendServiceChatCopyWith<$Res> {
  _$ChatsBackendServiceChatCopyWithImpl(this._value, this._then);

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
abstract class _$$ChatsBackendServiceChatImplCopyWith<$Res>
    implements $ChatsBackendServiceChatCopyWith<$Res> {
  factory _$$ChatsBackendServiceChatImplCopyWith(
          _$ChatsBackendServiceChatImpl value,
          $Res Function(_$ChatsBackendServiceChatImpl) then) =
      __$$ChatsBackendServiceChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String message, String? profilePicturePath});
}

/// @nodoc
class __$$ChatsBackendServiceChatImplCopyWithImpl<$Res>
    extends _$ChatsBackendServiceChatCopyWithImpl<$Res,
        _$ChatsBackendServiceChatImpl>
    implements _$$ChatsBackendServiceChatImplCopyWith<$Res> {
  __$$ChatsBackendServiceChatImplCopyWithImpl(
      _$ChatsBackendServiceChatImpl _value,
      $Res Function(_$ChatsBackendServiceChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? message = null,
    Object? profilePicturePath = freezed,
  }) {
    return _then(_$ChatsBackendServiceChatImpl(
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

class _$ChatsBackendServiceChatImpl implements _ChatsBackendServiceChat {
  const _$ChatsBackendServiceChatImpl(
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
    return 'ChatsBackendServiceChat(id: $id, name: $name, message: $message, profilePicturePath: $profilePicturePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsBackendServiceChatImpl &&
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
  _$$ChatsBackendServiceChatImplCopyWith<_$ChatsBackendServiceChatImpl>
      get copyWith => __$$ChatsBackendServiceChatImplCopyWithImpl<
          _$ChatsBackendServiceChatImpl>(this, _$identity);
}

abstract class _ChatsBackendServiceChat implements ChatsBackendServiceChat {
  const factory _ChatsBackendServiceChat(
      {required final String id,
      required final String name,
      required final String message,
      final String? profilePicturePath}) = _$ChatsBackendServiceChatImpl;

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
  _$$ChatsBackendServiceChatImplCopyWith<_$ChatsBackendServiceChatImpl>
      get copyWith => throw _privateConstructorUsedError;
}
