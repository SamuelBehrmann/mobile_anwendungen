// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_backend_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileBackendServiceUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  Uri? get imageUrl => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileBackendServiceUserCopyWith<ProfileBackendServiceUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileBackendServiceUserCopyWith<$Res> {
  factory $ProfileBackendServiceUserCopyWith(ProfileBackendServiceUser value,
          $Res Function(ProfileBackendServiceUser) then) =
      _$ProfileBackendServiceUserCopyWithImpl<$Res, ProfileBackendServiceUser>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? email,
      String password,
      Uri? imageUrl,
      String? phoneNumber,
      String? description});
}

/// @nodoc
class _$ProfileBackendServiceUserCopyWithImpl<$Res,
        $Val extends ProfileBackendServiceUser>
    implements $ProfileBackendServiceUserCopyWith<$Res> {
  _$ProfileBackendServiceUserCopyWithImpl(this._value, this._then);

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
    Object? imageUrl = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProfileBackendServiceUserImplCopyWith<$Res>
    implements $ProfileBackendServiceUserCopyWith<$Res> {
  factory _$$ProfileBackendServiceUserImplCopyWith(
          _$ProfileBackendServiceUserImpl value,
          $Res Function(_$ProfileBackendServiceUserImpl) then) =
      __$$ProfileBackendServiceUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? email,
      String password,
      Uri? imageUrl,
      String? phoneNumber,
      String? description});
}

/// @nodoc
class __$$ProfileBackendServiceUserImplCopyWithImpl<$Res>
    extends _$ProfileBackendServiceUserCopyWithImpl<$Res,
        _$ProfileBackendServiceUserImpl>
    implements _$$ProfileBackendServiceUserImplCopyWith<$Res> {
  __$$ProfileBackendServiceUserImplCopyWithImpl(
      _$ProfileBackendServiceUserImpl _value,
      $Res Function(_$ProfileBackendServiceUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = freezed,
    Object? password = null,
    Object? imageUrl = freezed,
    Object? phoneNumber = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ProfileBackendServiceUserImpl(
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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

class _$ProfileBackendServiceUserImpl implements _ProfileBackendServiceUser {
  const _$ProfileBackendServiceUserImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.imageUrl,
      this.phoneNumber,
      this.description});

  @override
  final String id;
  @override
  final String name;
  @override
  final String? email;
  @override
  final String password;
  @override
  final Uri? imageUrl;
  @override
  final String? phoneNumber;
  @override
  final String? description;

  @override
  String toString() {
    return 'ProfileBackendServiceUser(id: $id, name: $name, email: $email, password: $password, imageUrl: $imageUrl, phoneNumber: $phoneNumber, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileBackendServiceUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, password,
      imageUrl, phoneNumber, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileBackendServiceUserImplCopyWith<_$ProfileBackendServiceUserImpl>
      get copyWith => __$$ProfileBackendServiceUserImplCopyWithImpl<
          _$ProfileBackendServiceUserImpl>(this, _$identity);
}

abstract class _ProfileBackendServiceUser implements ProfileBackendServiceUser {
  const factory _ProfileBackendServiceUser(
      {required final String id,
      required final String name,
      required final String? email,
      required final String password,
      required final Uri? imageUrl,
      final String? phoneNumber,
      final String? description}) = _$ProfileBackendServiceUserImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get email;
  @override
  String get password;
  @override
  Uri? get imageUrl;
  @override
  String? get phoneNumber;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$ProfileBackendServiceUserImplCopyWith<_$ProfileBackendServiceUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}
