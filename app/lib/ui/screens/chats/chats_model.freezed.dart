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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)?
        data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsModelData value) data,
    required TResult Function(ChatsModelLoading value) loading,
    required TResult Function(ChatsModelError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsModelData value)? data,
    TResult? Function(ChatsModelLoading value)? loading,
    TResult? Function(ChatsModelError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsModelData value)? data,
    TResult Function(ChatsModelLoading value)? loading,
    TResult Function(ChatsModelError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsModelCopyWith<$Res> {
  factory $ChatsModelCopyWith(
          ChatsModel value, $Res Function(ChatsModel) then) =
      _$ChatsModelCopyWithImpl<$Res, ChatsModel>;
}

/// @nodoc
class _$ChatsModelCopyWithImpl<$Res, $Val extends ChatsModel>
    implements $ChatsModelCopyWith<$Res> {
  _$ChatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatsModelDataImplCopyWith<$Res> {
  factory _$$ChatsModelDataImplCopyWith(_$ChatsModelDataImpl value,
          $Res Function(_$ChatsModelDataImpl) then) =
      __$$ChatsModelDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats});
}

/// @nodoc
class __$$ChatsModelDataImplCopyWithImpl<$Res>
    extends _$ChatsModelCopyWithImpl<$Res, _$ChatsModelDataImpl>
    implements _$$ChatsModelDataImplCopyWith<$Res> {
  __$$ChatsModelDataImplCopyWithImpl(
      _$ChatsModelDataImpl _value, $Res Function(_$ChatsModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? filteredChats = null,
  }) {
    return _then(_$ChatsModelDataImpl(
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

class _$ChatsModelDataImpl extends ChatsModelData {
  const _$ChatsModelDataImpl(
      {required final List<ChatsModelChat> chats,
      final List<ChatsModelChat> filteredChats = const <ChatsModelChat>[]})
      : _chats = chats,
        _filteredChats = filteredChats,
        super._();

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
    return 'ChatsModel.data(chats: $chats, filteredChats: $filteredChats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsModelDataImpl &&
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
  _$$ChatsModelDataImplCopyWith<_$ChatsModelDataImpl> get copyWith =>
      __$$ChatsModelDataImplCopyWithImpl<_$ChatsModelDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return data(chats, filteredChats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)?
        data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return data?.call(chats, filteredChats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(chats, filteredChats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsModelData value) data,
    required TResult Function(ChatsModelLoading value) loading,
    required TResult Function(ChatsModelError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsModelData value)? data,
    TResult? Function(ChatsModelLoading value)? loading,
    TResult? Function(ChatsModelError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsModelData value)? data,
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

abstract class ChatsModelData extends ChatsModel {
  const factory ChatsModelData(
      {required final List<ChatsModelChat> chats,
      final List<ChatsModelChat> filteredChats}) = _$ChatsModelDataImpl;
  const ChatsModelData._() : super._();

  List<ChatsModelChat> get chats;
  List<ChatsModelChat> get filteredChats;
  @JsonKey(ignore: true)
  _$$ChatsModelDataImplCopyWith<_$ChatsModelDataImpl> get copyWith =>
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
    extends _$ChatsModelCopyWithImpl<$Res, _$ChatsModelLoadingImpl>
    implements _$$ChatsModelLoadingImplCopyWith<$Res> {
  __$$ChatsModelLoadingImplCopyWithImpl(_$ChatsModelLoadingImpl _value,
      $Res Function(_$ChatsModelLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatsModelLoadingImpl extends ChatsModelLoading {
  const _$ChatsModelLoadingImpl() : super._();

  @override
  String toString() {
    return 'ChatsModel.loading()';
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
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)?
        data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
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
    required TResult Function(ChatsModelData value) data,
    required TResult Function(ChatsModelLoading value) loading,
    required TResult Function(ChatsModelError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsModelData value)? data,
    TResult? Function(ChatsModelLoading value)? loading,
    TResult? Function(ChatsModelError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsModelData value)? data,
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

abstract class ChatsModelLoading extends ChatsModel {
  const factory ChatsModelLoading() = _$ChatsModelLoadingImpl;
  const ChatsModelLoading._() : super._();
}

/// @nodoc
abstract class _$$ChatsModelErrorImplCopyWith<$Res> {
  factory _$$ChatsModelErrorImplCopyWith(_$ChatsModelErrorImpl value,
          $Res Function(_$ChatsModelErrorImpl) then) =
      __$$ChatsModelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ChatsModelErrorImplCopyWithImpl<$Res>
    extends _$ChatsModelCopyWithImpl<$Res, _$ChatsModelErrorImpl>
    implements _$$ChatsModelErrorImplCopyWith<$Res> {
  __$$ChatsModelErrorImplCopyWithImpl(
      _$ChatsModelErrorImpl _value, $Res Function(_$ChatsModelErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ChatsModelErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatsModelErrorImpl extends ChatsModelError {
  const _$ChatsModelErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'ChatsModel.error(message: $message)';
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
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)
        data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)?
        data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ChatsModelChat> chats, List<ChatsModelChat> filteredChats)?
        data,
    TResult Function()? loading,
    TResult Function(String message)? error,
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
    required TResult Function(ChatsModelData value) data,
    required TResult Function(ChatsModelLoading value) loading,
    required TResult Function(ChatsModelError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsModelData value)? data,
    TResult? Function(ChatsModelLoading value)? loading,
    TResult? Function(ChatsModelError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsModelData value)? data,
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

abstract class ChatsModelError extends ChatsModel {
  const factory ChatsModelError(final String message) = _$ChatsModelErrorImpl;
  const ChatsModelError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ChatsModelErrorImplCopyWith<_$ChatsModelErrorImpl> get copyWith =>
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
