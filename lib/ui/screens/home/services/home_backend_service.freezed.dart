// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_backend_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBackendServicePost {
  String get userId => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBackendServicePostCopyWith<HomeBackendServicePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBackendServicePostCopyWith<$Res> {
  factory $HomeBackendServicePostCopyWith(HomeBackendServicePost value,
          $Res Function(HomeBackendServicePost) then) =
      _$HomeBackendServicePostCopyWithImpl<$Res, HomeBackendServicePost>;
  @useResult
  $Res call({String userId, String postId, String title, String body});
}

/// @nodoc
class _$HomeBackendServicePostCopyWithImpl<$Res,
        $Val extends HomeBackendServicePost>
    implements $HomeBackendServicePostCopyWith<$Res> {
  _$HomeBackendServicePostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? postId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeBackendServicePostImplCopyWith<$Res>
    implements $HomeBackendServicePostCopyWith<$Res> {
  factory _$$HomeBackendServicePostImplCopyWith(
          _$HomeBackendServicePostImpl value,
          $Res Function(_$HomeBackendServicePostImpl) then) =
      __$$HomeBackendServicePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String postId, String title, String body});
}

/// @nodoc
class __$$HomeBackendServicePostImplCopyWithImpl<$Res>
    extends _$HomeBackendServicePostCopyWithImpl<$Res,
        _$HomeBackendServicePostImpl>
    implements _$$HomeBackendServicePostImplCopyWith<$Res> {
  __$$HomeBackendServicePostImplCopyWithImpl(
      _$HomeBackendServicePostImpl _value,
      $Res Function(_$HomeBackendServicePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? postId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$HomeBackendServicePostImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeBackendServicePostImpl implements _HomeBackendServicePost {
  const _$HomeBackendServicePostImpl(
      {required this.userId,
      required this.postId,
      required this.title,
      required this.body});

  @override
  final String userId;
  @override
  final String postId;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'HomeBackendServicePost(userId: $userId, postId: $postId, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBackendServicePostImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, postId, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBackendServicePostImplCopyWith<_$HomeBackendServicePostImpl>
      get copyWith => __$$HomeBackendServicePostImplCopyWithImpl<
          _$HomeBackendServicePostImpl>(this, _$identity);
}

abstract class _HomeBackendServicePost implements HomeBackendServicePost {
  const factory _HomeBackendServicePost(
      {required final String userId,
      required final String postId,
      required final String title,
      required final String body}) = _$HomeBackendServicePostImpl;

  @override
  String get userId;
  @override
  String get postId;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$HomeBackendServicePostImplCopyWith<_$HomeBackendServicePostImpl>
      get copyWith => throw _privateConstructorUsedError;
}
