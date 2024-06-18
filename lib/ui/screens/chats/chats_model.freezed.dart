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
  List<SingleChat> get chats => throw _privateConstructorUsedError;
  List<SingleChat>? get filteredChats => throw _privateConstructorUsedError;

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
  $Res call({List<SingleChat> chats, List<SingleChat>? filteredChats});
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
    Object? filteredChats = freezed,
  }) {
    return _then(_value.copyWith(
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<SingleChat>,
      filteredChats: freezed == filteredChats
          ? _value.filteredChats
          : filteredChats // ignore: cast_nullable_to_non_nullable
              as List<SingleChat>?,
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
  $Res call({List<SingleChat> chats, List<SingleChat>? filteredChats});
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
    Object? filteredChats = freezed,
  }) {
    return _then(_$ChatsModelImpl(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<SingleChat>,
      filteredChats: freezed == filteredChats
          ? _value._filteredChats
          : filteredChats // ignore: cast_nullable_to_non_nullable
              as List<SingleChat>?,
    ));
  }
}

/// @nodoc

class _$ChatsModelImpl implements _ChatsModel {
  const _$ChatsModelImpl(
      {required final List<SingleChat> chats,
      final List<SingleChat>? filteredChats})
      : _chats = chats,
        _filteredChats = filteredChats;

  final List<SingleChat> _chats;
  @override
  List<SingleChat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  final List<SingleChat>? _filteredChats;
  @override
  List<SingleChat>? get filteredChats {
    final value = _filteredChats;
    if (value == null) return null;
    if (_filteredChats is EqualUnmodifiableListView) return _filteredChats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
      {required final List<SingleChat> chats,
      final List<SingleChat>? filteredChats}) = _$ChatsModelImpl;

  @override
  List<SingleChat> get chats;
  @override
  List<SingleChat>? get filteredChats;
  @override
  @JsonKey(ignore: true)
  _$$ChatsModelImplCopyWith<_$ChatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleChat {
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get profilePicturePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleChatCopyWith<SingleChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleChatCopyWith<$Res> {
  factory $SingleChatCopyWith(
          SingleChat value, $Res Function(SingleChat) then) =
      _$SingleChatCopyWithImpl<$Res, SingleChat>;
  @useResult
  $Res call({String name, String message, String? profilePicturePath});
}

/// @nodoc
class _$SingleChatCopyWithImpl<$Res, $Val extends SingleChat>
    implements $SingleChatCopyWith<$Res> {
  _$SingleChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? message = null,
    Object? profilePicturePath = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$SingleChatImplCopyWith<$Res>
    implements $SingleChatCopyWith<$Res> {
  factory _$$SingleChatImplCopyWith(
          _$SingleChatImpl value, $Res Function(_$SingleChatImpl) then) =
      __$$SingleChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String message, String? profilePicturePath});
}

/// @nodoc
class __$$SingleChatImplCopyWithImpl<$Res>
    extends _$SingleChatCopyWithImpl<$Res, _$SingleChatImpl>
    implements _$$SingleChatImplCopyWith<$Res> {
  __$$SingleChatImplCopyWithImpl(
      _$SingleChatImpl _value, $Res Function(_$SingleChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? message = null,
    Object? profilePicturePath = freezed,
  }) {
    return _then(_$SingleChatImpl(
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

class _$SingleChatImpl implements _SingleChat {
  const _$SingleChatImpl(
      {required this.name, required this.message, this.profilePicturePath});

  @override
  final String name;
  @override
  final String message;
  @override
  final String? profilePicturePath;

  @override
  String toString() {
    return 'SingleChat(name: $name, message: $message, profilePicturePath: $profilePicturePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleChatImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.profilePicturePath, profilePicturePath) ||
                other.profilePicturePath == profilePicturePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, message, profilePicturePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleChatImplCopyWith<_$SingleChatImpl> get copyWith =>
      __$$SingleChatImplCopyWithImpl<_$SingleChatImpl>(this, _$identity);
}

abstract class _SingleChat implements SingleChat {
  const factory _SingleChat(
      {required final String name,
      required final String message,
      final String? profilePicturePath}) = _$SingleChatImpl;

  @override
  String get name;
  @override
  String get message;
  @override
  String? get profilePicturePath;
  @override
  @JsonKey(ignore: true)
  _$$SingleChatImplCopyWith<_$SingleChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
