// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HomeModelPost> posts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HomeModelPost> posts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HomeModelPost> posts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeModelData value) data,
    required TResult Function(HomeModelError value) error,
    required TResult Function(HomeModelLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeModelData value)? data,
    TResult? Function(HomeModelError value)? error,
    TResult? Function(HomeModelLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeModelData value)? data,
    TResult Function(HomeModelError value)? error,
    TResult Function(HomeModelLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeModelDataImplCopyWith<$Res> {
  factory _$$HomeModelDataImplCopyWith(
          _$HomeModelDataImpl value, $Res Function(_$HomeModelDataImpl) then) =
      __$$HomeModelDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HomeModelPost> posts});
}

/// @nodoc
class __$$HomeModelDataImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelDataImpl>
    implements _$$HomeModelDataImplCopyWith<$Res> {
  __$$HomeModelDataImplCopyWithImpl(
      _$HomeModelDataImpl _value, $Res Function(_$HomeModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$HomeModelDataImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<HomeModelPost>,
    ));
  }
}

/// @nodoc

class _$HomeModelDataImpl implements HomeModelData {
  const _$HomeModelDataImpl(
      {final List<HomeModelPost> posts = const <HomeModelPost>[]})
      : _posts = posts;

  final List<HomeModelPost> _posts;
  @override
  @JsonKey()
  List<HomeModelPost> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'HomeModel.data(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelDataImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelDataImplCopyWith<_$HomeModelDataImpl> get copyWith =>
      __$$HomeModelDataImplCopyWithImpl<_$HomeModelDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HomeModelPost> posts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return data(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HomeModelPost> posts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return data?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HomeModelPost> posts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeModelData value) data,
    required TResult Function(HomeModelError value) error,
    required TResult Function(HomeModelLoading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeModelData value)? data,
    TResult? Function(HomeModelError value)? error,
    TResult? Function(HomeModelLoading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeModelData value)? data,
    TResult Function(HomeModelError value)? error,
    TResult Function(HomeModelLoading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HomeModelData implements HomeModel {
  const factory HomeModelData({final List<HomeModelPost> posts}) =
      _$HomeModelDataImpl;

  List<HomeModelPost> get posts;
  @JsonKey(ignore: true)
  _$$HomeModelDataImplCopyWith<_$HomeModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeModelErrorImplCopyWith<$Res> {
  factory _$$HomeModelErrorImplCopyWith(_$HomeModelErrorImpl value,
          $Res Function(_$HomeModelErrorImpl) then) =
      __$$HomeModelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HomeModelErrorImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelErrorImpl>
    implements _$$HomeModelErrorImplCopyWith<$Res> {
  __$$HomeModelErrorImplCopyWithImpl(
      _$HomeModelErrorImpl _value, $Res Function(_$HomeModelErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HomeModelErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeModelErrorImpl implements HomeModelError {
  const _$HomeModelErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeModel.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelErrorImplCopyWith<_$HomeModelErrorImpl> get copyWith =>
      __$$HomeModelErrorImplCopyWithImpl<_$HomeModelErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HomeModelPost> posts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HomeModelPost> posts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HomeModelPost> posts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
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
    required TResult Function(HomeModelData value) data,
    required TResult Function(HomeModelError value) error,
    required TResult Function(HomeModelLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeModelData value)? data,
    TResult? Function(HomeModelError value)? error,
    TResult? Function(HomeModelLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeModelData value)? data,
    TResult Function(HomeModelError value)? error,
    TResult Function(HomeModelLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeModelError implements HomeModel {
  const factory HomeModelError({required final String message}) =
      _$HomeModelErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$HomeModelErrorImplCopyWith<_$HomeModelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeModelLoadingImplCopyWith<$Res> {
  factory _$$HomeModelLoadingImplCopyWith(_$HomeModelLoadingImpl value,
          $Res Function(_$HomeModelLoadingImpl) then) =
      __$$HomeModelLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeModelLoadingImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelLoadingImpl>
    implements _$$HomeModelLoadingImplCopyWith<$Res> {
  __$$HomeModelLoadingImplCopyWithImpl(_$HomeModelLoadingImpl _value,
      $Res Function(_$HomeModelLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeModelLoadingImpl implements HomeModelLoading {
  const _$HomeModelLoadingImpl();

  @override
  String toString() {
    return 'HomeModel.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeModelLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HomeModelPost> posts) data,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HomeModelPost> posts)? data,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HomeModelPost> posts)? data,
    TResult Function(String message)? error,
    TResult Function()? loading,
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
    required TResult Function(HomeModelData value) data,
    required TResult Function(HomeModelError value) error,
    required TResult Function(HomeModelLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeModelData value)? data,
    TResult? Function(HomeModelError value)? error,
    TResult? Function(HomeModelLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeModelData value)? data,
    TResult Function(HomeModelError value)? error,
    TResult Function(HomeModelLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeModelLoading implements HomeModel {
  const factory HomeModelLoading() = _$HomeModelLoadingImpl;
}

/// @nodoc
mixin _$HomeModelPost {
  HomeModelUser get user => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelPostCopyWith<HomeModelPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelPostCopyWith<$Res> {
  factory $HomeModelPostCopyWith(
          HomeModelPost value, $Res Function(HomeModelPost) then) =
      _$HomeModelPostCopyWithImpl<$Res, HomeModelPost>;
  @useResult
  $Res call({HomeModelUser user, String postId, String title, String body});

  $HomeModelUserCopyWith<$Res> get user;
}

/// @nodoc
class _$HomeModelPostCopyWithImpl<$Res, $Val extends HomeModelPost>
    implements $HomeModelPostCopyWith<$Res> {
  _$HomeModelPostCopyWithImpl(this._value, this._then);

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
              as HomeModelUser,
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
  $HomeModelUserCopyWith<$Res> get user {
    return $HomeModelUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeModelPostImplCopyWith<$Res>
    implements $HomeModelPostCopyWith<$Res> {
  factory _$$HomeModelPostImplCopyWith(
          _$HomeModelPostImpl value, $Res Function(_$HomeModelPostImpl) then) =
      __$$HomeModelPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeModelUser user, String postId, String title, String body});

  @override
  $HomeModelUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$HomeModelPostImplCopyWithImpl<$Res>
    extends _$HomeModelPostCopyWithImpl<$Res, _$HomeModelPostImpl>
    implements _$$HomeModelPostImplCopyWith<$Res> {
  __$$HomeModelPostImplCopyWithImpl(
      _$HomeModelPostImpl _value, $Res Function(_$HomeModelPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? postId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$HomeModelPostImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as HomeModelUser,
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

class _$HomeModelPostImpl extends _HomeModelPost {
  const _$HomeModelPostImpl(
      {required this.user,
      required this.postId,
      required this.title,
      required this.body})
      : super._();

  @override
  final HomeModelUser user;
  @override
  final String postId;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'HomeModelPost(user: $user, postId: $postId, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelPostImpl &&
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
  _$$HomeModelPostImplCopyWith<_$HomeModelPostImpl> get copyWith =>
      __$$HomeModelPostImplCopyWithImpl<_$HomeModelPostImpl>(this, _$identity);
}

abstract class _HomeModelPost extends HomeModelPost {
  const factory _HomeModelPost(
      {required final HomeModelUser user,
      required final String postId,
      required final String title,
      required final String body}) = _$HomeModelPostImpl;
  const _HomeModelPost._() : super._();

  @override
  HomeModelUser get user;
  @override
  String get postId;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelPostImplCopyWith<_$HomeModelPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  List<String> get titles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelUserCopyWith<HomeModelUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelUserCopyWith<$Res> {
  factory $HomeModelUserCopyWith(
          HomeModelUser value, $Res Function(HomeModelUser) then) =
      _$HomeModelUserCopyWithImpl<$Res, HomeModelUser>;
  @useResult
  $Res call({String id, String name, String avatarUrl, List<String> titles});
}

/// @nodoc
class _$HomeModelUserCopyWithImpl<$Res, $Val extends HomeModelUser>
    implements $HomeModelUserCopyWith<$Res> {
  _$HomeModelUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
    Object? titles = null,
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
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      titles: null == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelUserImplCopyWith<$Res>
    implements $HomeModelUserCopyWith<$Res> {
  factory _$$HomeModelUserImplCopyWith(
          _$HomeModelUserImpl value, $Res Function(_$HomeModelUserImpl) then) =
      __$$HomeModelUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String avatarUrl, List<String> titles});
}

/// @nodoc
class __$$HomeModelUserImplCopyWithImpl<$Res>
    extends _$HomeModelUserCopyWithImpl<$Res, _$HomeModelUserImpl>
    implements _$$HomeModelUserImplCopyWith<$Res> {
  __$$HomeModelUserImplCopyWithImpl(
      _$HomeModelUserImpl _value, $Res Function(_$HomeModelUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
    Object? titles = null,
  }) {
    return _then(_$HomeModelUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      titles: null == titles
          ? _value._titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$HomeModelUserImpl extends _HomeModelUser {
  const _$HomeModelUserImpl(
      {required this.id,
      required this.name,
      required this.avatarUrl,
      final List<String> titles = const <String>[]})
      : _titles = titles,
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String avatarUrl;
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
    return 'HomeModelUser(id: $id, name: $name, avatarUrl: $avatarUrl, titles: $titles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality().equals(other._titles, _titles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl,
      const DeepCollectionEquality().hash(_titles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelUserImplCopyWith<_$HomeModelUserImpl> get copyWith =>
      __$$HomeModelUserImplCopyWithImpl<_$HomeModelUserImpl>(this, _$identity);
}

abstract class _HomeModelUser extends HomeModelUser {
  const factory _HomeModelUser(
      {required final String id,
      required final String name,
      required final String avatarUrl,
      final List<String> titles}) = _$HomeModelUserImpl;
  const _HomeModelUser._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String get avatarUrl;
  @override
  List<String> get titles;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelUserImplCopyWith<_$HomeModelUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
