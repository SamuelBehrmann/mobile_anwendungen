// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileModelUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  Uri? get profilePicturePath => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileModelUserCopyWith<ProfileModelUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelUserCopyWith<$Res> {
  factory $ProfileModelUserCopyWith(
          ProfileModelUser value, $Res Function(ProfileModelUser) then) =
      _$ProfileModelUserCopyWithImpl<$Res, ProfileModelUser>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? email,
      String password,
      Uri? profilePicturePath,
      String? phoneNumber,
      String? description});
}

/// @nodoc
class _$ProfileModelUserCopyWithImpl<$Res, $Val extends ProfileModelUser>
    implements $ProfileModelUserCopyWith<$Res> {
  _$ProfileModelUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = freezed,
    Object? password = null,
    Object? profilePicturePath = freezed,
    Object? phoneNumber = freezed,
    Object? description = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicturePath: freezed == profilePicturePath
          ? _value.profilePicturePath
          : profilePicturePath // ignore: cast_nullable_to_non_nullable
              as Uri?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelUserImplCopyWith<$Res>
    implements $ProfileModelUserCopyWith<$Res> {
  factory _$$ProfileModelUserImplCopyWith(_$ProfileModelUserImpl value,
          $Res Function(_$ProfileModelUserImpl) then) =
      __$$ProfileModelUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? email,
      String password,
      Uri? profilePicturePath,
      String? phoneNumber,
      String? description});
}

/// @nodoc
class __$$ProfileModelUserImplCopyWithImpl<$Res>
    extends _$ProfileModelUserCopyWithImpl<$Res, _$ProfileModelUserImpl>
    implements _$$ProfileModelUserImplCopyWith<$Res> {
  __$$ProfileModelUserImplCopyWithImpl(_$ProfileModelUserImpl _value,
      $Res Function(_$ProfileModelUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = freezed,
    Object? password = null,
    Object? profilePicturePath = freezed,
    Object? phoneNumber = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ProfileModelUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicturePath: freezed == profilePicturePath
          ? _value.profilePicturePath
          : profilePicturePath // ignore: cast_nullable_to_non_nullable
              as Uri?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileModelUserImpl extends _ProfileModelUser {
  const _$ProfileModelUserImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      this.profilePicturePath,
      this.phoneNumber,
      this.description})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String? email;
  @override
  final String password;
  @override
  final Uri? profilePicturePath;
  @override
  final String? phoneNumber;
  @override
  final String? description;

  @override
  String toString() {
    return 'ProfileModelUser(id: $id, name: $name, email: $email, password: $password, profilePicturePath: $profilePicturePath, phoneNumber: $phoneNumber, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.profilePicturePath, profilePicturePath) ||
                other.profilePicturePath == profilePicturePath) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, password,
      profilePicturePath, phoneNumber, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelUserImplCopyWith<_$ProfileModelUserImpl> get copyWith =>
      __$$ProfileModelUserImplCopyWithImpl<_$ProfileModelUserImpl>(
          this, _$identity);
}

abstract class _ProfileModelUser extends ProfileModelUser {
  const factory _ProfileModelUser(
      {required final String id,
      required final String name,
      required final String? email,
      required final String password,
      final Uri? profilePicturePath,
      final String? phoneNumber,
      final String? description}) = _$ProfileModelUserImpl;
  const _ProfileModelUser._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String? get email;
  @override
  String get password;
  @override
  Uri? get profilePicturePath;
  @override
  String? get phoneNumber;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelUserImplCopyWith<_$ProfileModelUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileModelUser user) data,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileModelUser user)? data,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileModelUser user)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileModelLoading value) loading,
    required TResult Function(ProfileModelData value) data,
    required TResult Function(ProfileModelError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileModelLoading value)? loading,
    TResult? Function(ProfileModelData value)? data,
    TResult? Function(ProfileModelError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileModelLoading value)? loading,
    TResult Function(ProfileModelData value)? data,
    TResult Function(ProfileModelError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileModelLoadingImplCopyWith<$Res> {
  factory _$$ProfileModelLoadingImplCopyWith(_$ProfileModelLoadingImpl value,
          $Res Function(_$ProfileModelLoadingImpl) then) =
      __$$ProfileModelLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileModelLoadingImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelLoadingImpl>
    implements _$$ProfileModelLoadingImplCopyWith<$Res> {
  __$$ProfileModelLoadingImplCopyWithImpl(_$ProfileModelLoadingImpl _value,
      $Res Function(_$ProfileModelLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileModelLoadingImpl implements ProfileModelLoading {
  const _$ProfileModelLoadingImpl();

  @override
  String toString() {
    return 'ProfileModel.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileModelUser user) data,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileModelUser user)? data,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileModelUser user)? data,
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
    required TResult Function(ProfileModelLoading value) loading,
    required TResult Function(ProfileModelData value) data,
    required TResult Function(ProfileModelError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileModelLoading value)? loading,
    TResult? Function(ProfileModelData value)? data,
    TResult? Function(ProfileModelError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileModelLoading value)? loading,
    TResult Function(ProfileModelData value)? data,
    TResult Function(ProfileModelError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileModelLoading implements ProfileModel {
  const factory ProfileModelLoading() = _$ProfileModelLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileModelDataImplCopyWith<$Res> {
  factory _$$ProfileModelDataImplCopyWith(_$ProfileModelDataImpl value,
          $Res Function(_$ProfileModelDataImpl) then) =
      __$$ProfileModelDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileModelUser user});

  $ProfileModelUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ProfileModelDataImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelDataImpl>
    implements _$$ProfileModelDataImplCopyWith<$Res> {
  __$$ProfileModelDataImplCopyWithImpl(_$ProfileModelDataImpl _value,
      $Res Function(_$ProfileModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ProfileModelDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileModelUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileModelUserCopyWith<$Res> get user {
    return $ProfileModelUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ProfileModelDataImpl implements ProfileModelData {
  const _$ProfileModelDataImpl({required this.user});

  @override
  final ProfileModelUser user;

  @override
  String toString() {
    return 'ProfileModel.data(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelDataImplCopyWith<_$ProfileModelDataImpl> get copyWith =>
      __$$ProfileModelDataImplCopyWithImpl<_$ProfileModelDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileModelUser user) data,
    required TResult Function(String message) error,
  }) {
    return data(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileModelUser user)? data,
    TResult? Function(String message)? error,
  }) {
    return data?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileModelUser user)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileModelLoading value) loading,
    required TResult Function(ProfileModelData value) data,
    required TResult Function(ProfileModelError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileModelLoading value)? loading,
    TResult? Function(ProfileModelData value)? data,
    TResult? Function(ProfileModelError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileModelLoading value)? loading,
    TResult Function(ProfileModelData value)? data,
    TResult Function(ProfileModelError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ProfileModelData implements ProfileModel {
  const factory ProfileModelData({required final ProfileModelUser user}) =
      _$ProfileModelDataImpl;

  ProfileModelUser get user;
  @JsonKey(ignore: true)
  _$$ProfileModelDataImplCopyWith<_$ProfileModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileModelErrorImplCopyWith<$Res> {
  factory _$$ProfileModelErrorImplCopyWith(_$ProfileModelErrorImpl value,
          $Res Function(_$ProfileModelErrorImpl) then) =
      __$$ProfileModelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProfileModelErrorImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelErrorImpl>
    implements _$$ProfileModelErrorImplCopyWith<$Res> {
  __$$ProfileModelErrorImplCopyWithImpl(_$ProfileModelErrorImpl _value,
      $Res Function(_$ProfileModelErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProfileModelErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileModelErrorImpl implements ProfileModelError {
  const _$ProfileModelErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileModel.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelErrorImplCopyWith<_$ProfileModelErrorImpl> get copyWith =>
      __$$ProfileModelErrorImplCopyWithImpl<_$ProfileModelErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileModelUser user) data,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileModelUser user)? data,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileModelUser user)? data,
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
    required TResult Function(ProfileModelLoading value) loading,
    required TResult Function(ProfileModelData value) data,
    required TResult Function(ProfileModelError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileModelLoading value)? loading,
    TResult? Function(ProfileModelData value)? data,
    TResult? Function(ProfileModelError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileModelLoading value)? loading,
    TResult Function(ProfileModelData value)? data,
    TResult Function(ProfileModelError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileModelError implements ProfileModel {
  const factory ProfileModelError({required final String message}) =
      _$ProfileModelErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ProfileModelErrorImplCopyWith<_$ProfileModelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
