// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_backend_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchBackendServicePost {
  String get postId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchBackendServicePostCopyWith<SearchBackendServicePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBackendServicePostCopyWith<$Res> {
  factory $SearchBackendServicePostCopyWith(SearchBackendServicePost value,
          $Res Function(SearchBackendServicePost) then) =
      _$SearchBackendServicePostCopyWithImpl<$Res, SearchBackendServicePost>;
  @useResult
  $Res call({String postId, String title, String body});
}

/// @nodoc
class _$SearchBackendServicePostCopyWithImpl<$Res,
        $Val extends SearchBackendServicePost>
    implements $SearchBackendServicePostCopyWith<$Res> {
  _$SearchBackendServicePostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$SearchBackendServicePostImplCopyWith<$Res>
    implements $SearchBackendServicePostCopyWith<$Res> {
  factory _$$SearchBackendServicePostImplCopyWith(
          _$SearchBackendServicePostImpl value,
          $Res Function(_$SearchBackendServicePostImpl) then) =
      __$$SearchBackendServicePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postId, String title, String body});
}

/// @nodoc
class __$$SearchBackendServicePostImplCopyWithImpl<$Res>
    extends _$SearchBackendServicePostCopyWithImpl<$Res,
        _$SearchBackendServicePostImpl>
    implements _$$SearchBackendServicePostImplCopyWith<$Res> {
  __$$SearchBackendServicePostImplCopyWithImpl(
      _$SearchBackendServicePostImpl _value,
      $Res Function(_$SearchBackendServicePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$SearchBackendServicePostImpl(
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

class _$SearchBackendServicePostImpl implements _SearchBackendServicePost {
  const _$SearchBackendServicePostImpl(
      {required this.postId, required this.title, required this.body});

  @override
  final String postId;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'SearchBackendServicePost(postId: $postId, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBackendServicePostImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBackendServicePostImplCopyWith<_$SearchBackendServicePostImpl>
      get copyWith => __$$SearchBackendServicePostImplCopyWithImpl<
          _$SearchBackendServicePostImpl>(this, _$identity);
}

abstract class _SearchBackendServicePost implements SearchBackendServicePost {
  const factory _SearchBackendServicePost(
      {required final String postId,
      required final String title,
      required final String body}) = _$SearchBackendServicePostImpl;

  @override
  String get postId;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$SearchBackendServicePostImplCopyWith<_$SearchBackendServicePostImpl>
      get copyWith => throw _privateConstructorUsedError;
}
