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
  HomeBackendServiceUser get user => throw _privateConstructorUsedError;
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
  $Res call(
      {HomeBackendServiceUser user, String postId, String title, String body});

  $HomeBackendServiceUserCopyWith<$Res> get user;
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
    Object? user = null,
    Object? postId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as HomeBackendServiceUser,
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

  @override
  @pragma('vm:prefer-inline')
  $HomeBackendServiceUserCopyWith<$Res> get user {
    return $HomeBackendServiceUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
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
  $Res call(
      {HomeBackendServiceUser user, String postId, String title, String body});

  @override
  $HomeBackendServiceUserCopyWith<$Res> get user;
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
    Object? user = null,
    Object? postId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$HomeBackendServicePostImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as HomeBackendServiceUser,
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
      {required this.user,
      required this.postId,
      required this.title,
      required this.body});

  @override
  final HomeBackendServiceUser user;
  @override
  final String postId;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'HomeBackendServicePost(user: $user, postId: $postId, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBackendServicePostImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, postId, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBackendServicePostImplCopyWith<_$HomeBackendServicePostImpl>
      get copyWith => __$$HomeBackendServicePostImplCopyWithImpl<
          _$HomeBackendServicePostImpl>(this, _$identity);
}

abstract class _HomeBackendServicePost implements HomeBackendServicePost {
  const factory _HomeBackendServicePost(
      {required final HomeBackendServiceUser user,
      required final String postId,
      required final String title,
      required final String body}) = _$HomeBackendServicePostImpl;

  @override
  HomeBackendServiceUser get user;
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

/// @nodoc
mixin _$HomeBackendServiceUser {
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get userAvatarUrl => throw _privateConstructorUsedError;
  List<String> get titles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBackendServiceUserCopyWith<HomeBackendServiceUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBackendServiceUserCopyWith<$Res> {
  factory $HomeBackendServiceUserCopyWith(HomeBackendServiceUser value,
          $Res Function(HomeBackendServiceUser) then) =
      _$HomeBackendServiceUserCopyWithImpl<$Res, HomeBackendServiceUser>;
  @useResult
  $Res call(
      {String userId,
      String userName,
      String userAvatarUrl,
      List<String> titles});
}

/// @nodoc
class _$HomeBackendServiceUserCopyWithImpl<$Res,
        $Val extends HomeBackendServiceUser>
    implements $HomeBackendServiceUserCopyWith<$Res> {
  _$HomeBackendServiceUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? userAvatarUrl = null,
    Object? titles = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatarUrl: null == userAvatarUrl
          ? _value.userAvatarUrl
          : userAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      titles: null == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeBackendServiceUserImplCopyWith<$Res>
    implements $HomeBackendServiceUserCopyWith<$Res> {
  factory _$$HomeBackendServiceUserImplCopyWith(
          _$HomeBackendServiceUserImpl value,
          $Res Function(_$HomeBackendServiceUserImpl) then) =
      __$$HomeBackendServiceUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String userName,
      String userAvatarUrl,
      List<String> titles});
}

/// @nodoc
class __$$HomeBackendServiceUserImplCopyWithImpl<$Res>
    extends _$HomeBackendServiceUserCopyWithImpl<$Res,
        _$HomeBackendServiceUserImpl>
    implements _$$HomeBackendServiceUserImplCopyWith<$Res> {
  __$$HomeBackendServiceUserImplCopyWithImpl(
      _$HomeBackendServiceUserImpl _value,
      $Res Function(_$HomeBackendServiceUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? userAvatarUrl = null,
    Object? titles = null,
  }) {
    return _then(_$HomeBackendServiceUserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatarUrl: null == userAvatarUrl
          ? _value.userAvatarUrl
          : userAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      titles: null == titles
          ? _value._titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$HomeBackendServiceUserImpl implements _HomeBackendServiceUser {
  const _$HomeBackendServiceUserImpl(
      {required this.userId,
      required this.userName,
      required this.userAvatarUrl,
      final List<String> titles = const <String>[]})
      : _titles = titles;

  @override
  final String userId;
  @override
  final String userName;
  @override
  final String userAvatarUrl;
  final List<String> _titles;
  @override
  @JsonKey()
  List<String> get titles {
    if (_titles is EqualUnmodifiableListView) return _titles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titles);
  }

  @override
  String toString() {
    return 'HomeBackendServiceUser(userId: $userId, userName: $userName, userAvatarUrl: $userAvatarUrl, titles: $titles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBackendServiceUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userAvatarUrl, userAvatarUrl) ||
                other.userAvatarUrl == userAvatarUrl) &&
            const DeepCollectionEquality().equals(other._titles, _titles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, userName, userAvatarUrl,
      const DeepCollectionEquality().hash(_titles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBackendServiceUserImplCopyWith<_$HomeBackendServiceUserImpl>
      get copyWith => __$$HomeBackendServiceUserImplCopyWithImpl<
          _$HomeBackendServiceUserImpl>(this, _$identity);
}

abstract class _HomeBackendServiceUser implements HomeBackendServiceUser {
  const factory _HomeBackendServiceUser(
      {required final String userId,
      required final String userName,
      required final String userAvatarUrl,
      final List<String> titles}) = _$HomeBackendServiceUserImpl;

  @override
  String get userId;
  @override
  String get userName;
  @override
  String get userAvatarUrl;
  @override
  List<String> get titles;
  @override
  @JsonKey(ignore: true)
  _$$HomeBackendServiceUserImplCopyWith<_$HomeBackendServiceUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}
