// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_backend_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirestoreBackendServicePost _$FirestoreBackendServicePostFromJson(
    Map<String, dynamic> json) {
  return _FirestoreBackendServicePost.fromJson(json);
}

/// @nodoc
mixin _$FirestoreBackendServicePost {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  Map<String, FirestoreBackendServiceMessageRaw> get replies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreBackendServicePostCopyWith<FirestoreBackendServicePost>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreBackendServicePostCopyWith<$Res> {
  factory $FirestoreBackendServicePostCopyWith(
          FirestoreBackendServicePost value,
          $Res Function(FirestoreBackendServicePost) then) =
      _$FirestoreBackendServicePostCopyWithImpl<$Res,
          FirestoreBackendServicePost>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String authorId,
      Map<String, FirestoreBackendServiceMessageRaw> replies});
}

/// @nodoc
class _$FirestoreBackendServicePostCopyWithImpl<$Res,
        $Val extends FirestoreBackendServicePost>
    implements $FirestoreBackendServicePostCopyWith<$Res> {
  _$FirestoreBackendServicePostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? authorId = null,
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as Map<String, FirestoreBackendServiceMessageRaw>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestoreBackendServicePostImplCopyWith<$Res>
    implements $FirestoreBackendServicePostCopyWith<$Res> {
  factory _$$FirestoreBackendServicePostImplCopyWith(
          _$FirestoreBackendServicePostImpl value,
          $Res Function(_$FirestoreBackendServicePostImpl) then) =
      __$$FirestoreBackendServicePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String authorId,
      Map<String, FirestoreBackendServiceMessageRaw> replies});
}

/// @nodoc
class __$$FirestoreBackendServicePostImplCopyWithImpl<$Res>
    extends _$FirestoreBackendServicePostCopyWithImpl<$Res,
        _$FirestoreBackendServicePostImpl>
    implements _$$FirestoreBackendServicePostImplCopyWith<$Res> {
  __$$FirestoreBackendServicePostImplCopyWithImpl(
      _$FirestoreBackendServicePostImpl _value,
      $Res Function(_$FirestoreBackendServicePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? authorId = null,
    Object? replies = null,
  }) {
    return _then(_$FirestoreBackendServicePostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as Map<String, FirestoreBackendServiceMessageRaw>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreBackendServicePostImpl extends _FirestoreBackendServicePost {
  const _$FirestoreBackendServicePostImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.authorId,
      required final Map<String, FirestoreBackendServiceMessageRaw> replies})
      : _replies = replies,
        super._();

  factory _$FirestoreBackendServicePostImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreBackendServicePostImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String authorId;
  final Map<String, FirestoreBackendServiceMessageRaw> _replies;
  @override
  Map<String, FirestoreBackendServiceMessageRaw> get replies {
    if (_replies is EqualUnmodifiableMapView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_replies);
  }

  @override
  String toString() {
    return 'FirestoreBackendServicePost(id: $id, title: $title, content: $content, authorId: $authorId, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreBackendServicePostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, authorId,
      const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreBackendServicePostImplCopyWith<_$FirestoreBackendServicePostImpl>
      get copyWith => __$$FirestoreBackendServicePostImplCopyWithImpl<
          _$FirestoreBackendServicePostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreBackendServicePostImplToJson(
      this,
    );
  }
}

abstract class _FirestoreBackendServicePost
    extends FirestoreBackendServicePost {
  const factory _FirestoreBackendServicePost(
      {required final String id,
      required final String title,
      required final String content,
      required final String authorId,
      required final Map<String, FirestoreBackendServiceMessageRaw>
          replies}) = _$FirestoreBackendServicePostImpl;
  const _FirestoreBackendServicePost._() : super._();

  factory _FirestoreBackendServicePost.fromJson(Map<String, dynamic> json) =
      _$FirestoreBackendServicePostImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get authorId;
  @override
  Map<String, FirestoreBackendServiceMessageRaw> get replies;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreBackendServicePostImplCopyWith<_$FirestoreBackendServicePostImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FirestoreBackendServiceUser _$FirestoreBackendServiceUserFromJson(
    Map<String, dynamic> json) {
  return _FirestoreBackendServiceUser.fromJson(json);
}

/// @nodoc
mixin _$FirestoreBackendServiceUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uri get imageUrl => throw _privateConstructorUsedError;
  List<String> get titles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreBackendServiceUserCopyWith<FirestoreBackendServiceUser>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreBackendServiceUserCopyWith<$Res> {
  factory $FirestoreBackendServiceUserCopyWith(
          FirestoreBackendServiceUser value,
          $Res Function(FirestoreBackendServiceUser) then) =
      _$FirestoreBackendServiceUserCopyWithImpl<$Res,
          FirestoreBackendServiceUser>;
  @useResult
  $Res call({String id, String name, Uri imageUrl, List<String> titles});
}

/// @nodoc
class _$FirestoreBackendServiceUserCopyWithImpl<$Res,
        $Val extends FirestoreBackendServiceUser>
    implements $FirestoreBackendServiceUserCopyWith<$Res> {
  _$FirestoreBackendServiceUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      titles: null == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestoreBackendServiceUserImplCopyWith<$Res>
    implements $FirestoreBackendServiceUserCopyWith<$Res> {
  factory _$$FirestoreBackendServiceUserImplCopyWith(
          _$FirestoreBackendServiceUserImpl value,
          $Res Function(_$FirestoreBackendServiceUserImpl) then) =
      __$$FirestoreBackendServiceUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, Uri imageUrl, List<String> titles});
}

/// @nodoc
class __$$FirestoreBackendServiceUserImplCopyWithImpl<$Res>
    extends _$FirestoreBackendServiceUserCopyWithImpl<$Res,
        _$FirestoreBackendServiceUserImpl>
    implements _$$FirestoreBackendServiceUserImplCopyWith<$Res> {
  __$$FirestoreBackendServiceUserImplCopyWithImpl(
      _$FirestoreBackendServiceUserImpl _value,
      $Res Function(_$FirestoreBackendServiceUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? titles = null,
  }) {
    return _then(_$FirestoreBackendServiceUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      titles: null == titles
          ? _value._titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreBackendServiceUserImpl extends _FirestoreBackendServiceUser {
  const _$FirestoreBackendServiceUserImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required final List<String> titles})
      : _titles = titles,
        super._();

  factory _$FirestoreBackendServiceUserImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreBackendServiceUserImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Uri imageUrl;
  final List<String> _titles;
  @override
  List<String> get titles {
    if (_titles is EqualUnmodifiableListView) return _titles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titles);
  }

  @override
  String toString() {
    return 'FirestoreBackendServiceUser(id: $id, name: $name, imageUrl: $imageUrl, titles: $titles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreBackendServiceUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._titles, _titles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl,
      const DeepCollectionEquality().hash(_titles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreBackendServiceUserImplCopyWith<_$FirestoreBackendServiceUserImpl>
      get copyWith => __$$FirestoreBackendServiceUserImplCopyWithImpl<
          _$FirestoreBackendServiceUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreBackendServiceUserImplToJson(
      this,
    );
  }
}

abstract class _FirestoreBackendServiceUser
    extends FirestoreBackendServiceUser {
  const factory _FirestoreBackendServiceUser(
      {required final String id,
      required final String name,
      required final Uri imageUrl,
      required final List<String> titles}) = _$FirestoreBackendServiceUserImpl;
  const _FirestoreBackendServiceUser._() : super._();

  factory _FirestoreBackendServiceUser.fromJson(Map<String, dynamic> json) =
      _$FirestoreBackendServiceUserImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Uri get imageUrl;
  @override
  List<String> get titles;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreBackendServiceUserImplCopyWith<_$FirestoreBackendServiceUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FirestoreBackendServiceMessageWithAuthor
    _$FirestoreBackendServiceMessageWithAuthorFromJson(
        Map<String, dynamic> json) {
  return _FirestoreBackendServiceMessageWithAuthor.fromJson(json);
}

/// @nodoc
mixin _$FirestoreBackendServiceMessageWithAuthor {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  FirestoreBackendServiceUser get author => throw _privateConstructorUsedError;
  Map<String, FirestoreBackendServiceMessageWithAuthor> get replies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreBackendServiceMessageWithAuthorCopyWith<
          FirestoreBackendServiceMessageWithAuthor>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreBackendServiceMessageWithAuthorCopyWith<$Res> {
  factory $FirestoreBackendServiceMessageWithAuthorCopyWith(
          FirestoreBackendServiceMessageWithAuthor value,
          $Res Function(FirestoreBackendServiceMessageWithAuthor) then) =
      _$FirestoreBackendServiceMessageWithAuthorCopyWithImpl<$Res,
          FirestoreBackendServiceMessageWithAuthor>;
  @useResult
  $Res call(
      {String id,
      String content,
      FirestoreBackendServiceUser author,
      Map<String, FirestoreBackendServiceMessageWithAuthor> replies});

  $FirestoreBackendServiceUserCopyWith<$Res> get author;
}

/// @nodoc
class _$FirestoreBackendServiceMessageWithAuthorCopyWithImpl<$Res,
        $Val extends FirestoreBackendServiceMessageWithAuthor>
    implements $FirestoreBackendServiceMessageWithAuthorCopyWith<$Res> {
  _$FirestoreBackendServiceMessageWithAuthorCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? author = null,
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as FirestoreBackendServiceUser,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as Map<String, FirestoreBackendServiceMessageWithAuthor>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FirestoreBackendServiceUserCopyWith<$Res> get author {
    return $FirestoreBackendServiceUserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FirestoreBackendServiceMessageWithAuthorImplCopyWith<$Res>
    implements $FirestoreBackendServiceMessageWithAuthorCopyWith<$Res> {
  factory _$$FirestoreBackendServiceMessageWithAuthorImplCopyWith(
          _$FirestoreBackendServiceMessageWithAuthorImpl value,
          $Res Function(_$FirestoreBackendServiceMessageWithAuthorImpl) then) =
      __$$FirestoreBackendServiceMessageWithAuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String content,
      FirestoreBackendServiceUser author,
      Map<String, FirestoreBackendServiceMessageWithAuthor> replies});

  @override
  $FirestoreBackendServiceUserCopyWith<$Res> get author;
}

/// @nodoc
class __$$FirestoreBackendServiceMessageWithAuthorImplCopyWithImpl<$Res>
    extends _$FirestoreBackendServiceMessageWithAuthorCopyWithImpl<$Res,
        _$FirestoreBackendServiceMessageWithAuthorImpl>
    implements _$$FirestoreBackendServiceMessageWithAuthorImplCopyWith<$Res> {
  __$$FirestoreBackendServiceMessageWithAuthorImplCopyWithImpl(
      _$FirestoreBackendServiceMessageWithAuthorImpl _value,
      $Res Function(_$FirestoreBackendServiceMessageWithAuthorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? author = null,
    Object? replies = null,
  }) {
    return _then(_$FirestoreBackendServiceMessageWithAuthorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as FirestoreBackendServiceUser,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as Map<String, FirestoreBackendServiceMessageWithAuthor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreBackendServiceMessageWithAuthorImpl
    extends _FirestoreBackendServiceMessageWithAuthor {
  const _$FirestoreBackendServiceMessageWithAuthorImpl(
      {required this.id,
      required this.content,
      required this.author,
      required final Map<String, FirestoreBackendServiceMessageWithAuthor>
          replies})
      : _replies = replies,
        super._();

  factory _$FirestoreBackendServiceMessageWithAuthorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreBackendServiceMessageWithAuthorImplFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final FirestoreBackendServiceUser author;
  final Map<String, FirestoreBackendServiceMessageWithAuthor> _replies;
  @override
  Map<String, FirestoreBackendServiceMessageWithAuthor> get replies {
    if (_replies is EqualUnmodifiableMapView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_replies);
  }

  @override
  String toString() {
    return 'FirestoreBackendServiceMessageWithAuthor(id: $id, content: $content, author: $author, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreBackendServiceMessageWithAuthorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, author,
      const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreBackendServiceMessageWithAuthorImplCopyWith<
          _$FirestoreBackendServiceMessageWithAuthorImpl>
      get copyWith =>
          __$$FirestoreBackendServiceMessageWithAuthorImplCopyWithImpl<
              _$FirestoreBackendServiceMessageWithAuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreBackendServiceMessageWithAuthorImplToJson(
      this,
    );
  }
}

abstract class _FirestoreBackendServiceMessageWithAuthor
    extends FirestoreBackendServiceMessageWithAuthor {
  const factory _FirestoreBackendServiceMessageWithAuthor(
      {required final String id,
      required final String content,
      required final FirestoreBackendServiceUser author,
      required final Map<String, FirestoreBackendServiceMessageWithAuthor>
          replies}) = _$FirestoreBackendServiceMessageWithAuthorImpl;
  const _FirestoreBackendServiceMessageWithAuthor._() : super._();

  factory _FirestoreBackendServiceMessageWithAuthor.fromJson(
          Map<String, dynamic> json) =
      _$FirestoreBackendServiceMessageWithAuthorImpl.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  FirestoreBackendServiceUser get author;
  @override
  Map<String, FirestoreBackendServiceMessageWithAuthor> get replies;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreBackendServiceMessageWithAuthorImplCopyWith<
          _$FirestoreBackendServiceMessageWithAuthorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FirestoreBackendServiceMessageRaw _$FirestoreBackendServiceMessageRawFromJson(
    Map<String, dynamic> json) {
  return _FirestoreBackendServiceMessageRaw.fromJson(json);
}

/// @nodoc
mixin _$FirestoreBackendServiceMessageRaw {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  Map<String, FirestoreBackendServiceMessageRaw> get replies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreBackendServiceMessageRawCopyWith<FirestoreBackendServiceMessageRaw>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreBackendServiceMessageRawCopyWith<$Res> {
  factory $FirestoreBackendServiceMessageRawCopyWith(
          FirestoreBackendServiceMessageRaw value,
          $Res Function(FirestoreBackendServiceMessageRaw) then) =
      _$FirestoreBackendServiceMessageRawCopyWithImpl<$Res,
          FirestoreBackendServiceMessageRaw>;
  @useResult
  $Res call(
      {String id,
      String content,
      String authorId,
      Map<String, FirestoreBackendServiceMessageRaw> replies});
}

/// @nodoc
class _$FirestoreBackendServiceMessageRawCopyWithImpl<$Res,
        $Val extends FirestoreBackendServiceMessageRaw>
    implements $FirestoreBackendServiceMessageRawCopyWith<$Res> {
  _$FirestoreBackendServiceMessageRawCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? authorId = null,
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as Map<String, FirestoreBackendServiceMessageRaw>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestoreBackendServiceMessageRawImplCopyWith<$Res>
    implements $FirestoreBackendServiceMessageRawCopyWith<$Res> {
  factory _$$FirestoreBackendServiceMessageRawImplCopyWith(
          _$FirestoreBackendServiceMessageRawImpl value,
          $Res Function(_$FirestoreBackendServiceMessageRawImpl) then) =
      __$$FirestoreBackendServiceMessageRawImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String content,
      String authorId,
      Map<String, FirestoreBackendServiceMessageRaw> replies});
}

/// @nodoc
class __$$FirestoreBackendServiceMessageRawImplCopyWithImpl<$Res>
    extends _$FirestoreBackendServiceMessageRawCopyWithImpl<$Res,
        _$FirestoreBackendServiceMessageRawImpl>
    implements _$$FirestoreBackendServiceMessageRawImplCopyWith<$Res> {
  __$$FirestoreBackendServiceMessageRawImplCopyWithImpl(
      _$FirestoreBackendServiceMessageRawImpl _value,
      $Res Function(_$FirestoreBackendServiceMessageRawImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? authorId = null,
    Object? replies = null,
  }) {
    return _then(_$FirestoreBackendServiceMessageRawImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as Map<String, FirestoreBackendServiceMessageRaw>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreBackendServiceMessageRawImpl
    extends _FirestoreBackendServiceMessageRaw {
  const _$FirestoreBackendServiceMessageRawImpl(
      {required this.id,
      required this.content,
      required this.authorId,
      required final Map<String, FirestoreBackendServiceMessageRaw> replies})
      : _replies = replies,
        super._();

  factory _$FirestoreBackendServiceMessageRawImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreBackendServiceMessageRawImplFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final String authorId;
  final Map<String, FirestoreBackendServiceMessageRaw> _replies;
  @override
  Map<String, FirestoreBackendServiceMessageRaw> get replies {
    if (_replies is EqualUnmodifiableMapView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_replies);
  }

  @override
  String toString() {
    return 'FirestoreBackendServiceMessageRaw(id: $id, content: $content, authorId: $authorId, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreBackendServiceMessageRawImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, authorId,
      const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreBackendServiceMessageRawImplCopyWith<
          _$FirestoreBackendServiceMessageRawImpl>
      get copyWith => __$$FirestoreBackendServiceMessageRawImplCopyWithImpl<
          _$FirestoreBackendServiceMessageRawImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreBackendServiceMessageRawImplToJson(
      this,
    );
  }
}

abstract class _FirestoreBackendServiceMessageRaw
    extends FirestoreBackendServiceMessageRaw {
  const factory _FirestoreBackendServiceMessageRaw(
      {required final String id,
      required final String content,
      required final String authorId,
      required final Map<String, FirestoreBackendServiceMessageRaw>
          replies}) = _$FirestoreBackendServiceMessageRawImpl;
  const _FirestoreBackendServiceMessageRaw._() : super._();

  factory _FirestoreBackendServiceMessageRaw.fromJson(
          Map<String, dynamic> json) =
      _$FirestoreBackendServiceMessageRawImpl.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  String get authorId;
  @override
  Map<String, FirestoreBackendServiceMessageRaw> get replies;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreBackendServiceMessageRawImplCopyWith<
          _$FirestoreBackendServiceMessageRawImpl>
      get copyWith => throw _privateConstructorUsedError;
}
