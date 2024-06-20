// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_backend_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostBackendServicePost {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  PostBackendServiceUser get author => throw _privateConstructorUsedError;
  List<PostBackendServiceMessage> get replies =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostBackendServicePostCopyWith<PostBackendServicePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostBackendServicePostCopyWith<$Res> {
  factory $PostBackendServicePostCopyWith(PostBackendServicePost value,
          $Res Function(PostBackendServicePost) then) =
      _$PostBackendServicePostCopyWithImpl<$Res, PostBackendServicePost>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      PostBackendServiceUser author,
      List<PostBackendServiceMessage> replies});

  $PostBackendServiceUserCopyWith<$Res> get author;
}

/// @nodoc
class _$PostBackendServicePostCopyWithImpl<$Res,
        $Val extends PostBackendServicePost>
    implements $PostBackendServicePostCopyWith<$Res> {
  _$PostBackendServicePostCopyWithImpl(this._value, this._then);

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
    Object? author = null,
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
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as PostBackendServiceUser,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<PostBackendServiceMessage>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostBackendServiceUserCopyWith<$Res> get author {
    return $PostBackendServiceUserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostBackendServicePostImplCopyWith<$Res>
    implements $PostBackendServicePostCopyWith<$Res> {
  factory _$$PostBackendServicePostImplCopyWith(
          _$PostBackendServicePostImpl value,
          $Res Function(_$PostBackendServicePostImpl) then) =
      __$$PostBackendServicePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      PostBackendServiceUser author,
      List<PostBackendServiceMessage> replies});

  @override
  $PostBackendServiceUserCopyWith<$Res> get author;
}

/// @nodoc
class __$$PostBackendServicePostImplCopyWithImpl<$Res>
    extends _$PostBackendServicePostCopyWithImpl<$Res,
        _$PostBackendServicePostImpl>
    implements _$$PostBackendServicePostImplCopyWith<$Res> {
  __$$PostBackendServicePostImplCopyWithImpl(
      _$PostBackendServicePostImpl _value,
      $Res Function(_$PostBackendServicePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? author = null,
    Object? replies = null,
  }) {
    return _then(_$PostBackendServicePostImpl(
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
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as PostBackendServiceUser,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<PostBackendServiceMessage>,
    ));
  }
}

/// @nodoc

class _$PostBackendServicePostImpl implements _PostBackendServicePost {
  const _$PostBackendServicePostImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.author,
      required final List<PostBackendServiceMessage> replies})
      : _replies = replies;

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final PostBackendServiceUser author;
  final List<PostBackendServiceMessage> _replies;
  @override
  List<PostBackendServiceMessage> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'PostBackendServicePost(id: $id, title: $title, content: $content, author: $author, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostBackendServicePostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, author,
      const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostBackendServicePostImplCopyWith<_$PostBackendServicePostImpl>
      get copyWith => __$$PostBackendServicePostImplCopyWithImpl<
          _$PostBackendServicePostImpl>(this, _$identity);
}

abstract class _PostBackendServicePost implements PostBackendServicePost {
  const factory _PostBackendServicePost(
          {required final String id,
          required final String title,
          required final String content,
          required final PostBackendServiceUser author,
          required final List<PostBackendServiceMessage> replies}) =
      _$PostBackendServicePostImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  PostBackendServiceUser get author;
  @override
  List<PostBackendServiceMessage> get replies;
  @override
  @JsonKey(ignore: true)
  _$$PostBackendServicePostImplCopyWith<_$PostBackendServicePostImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostBackendServiceUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uri get avatar => throw _privateConstructorUsedError;
  List<String> get titles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostBackendServiceUserCopyWith<PostBackendServiceUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostBackendServiceUserCopyWith<$Res> {
  factory $PostBackendServiceUserCopyWith(PostBackendServiceUser value,
          $Res Function(PostBackendServiceUser) then) =
      _$PostBackendServiceUserCopyWithImpl<$Res, PostBackendServiceUser>;
  @useResult
  $Res call({String id, String name, Uri avatar, List<String> titles});
}

/// @nodoc
class _$PostBackendServiceUserCopyWithImpl<$Res,
        $Val extends PostBackendServiceUser>
    implements $PostBackendServiceUserCopyWith<$Res> {
  _$PostBackendServiceUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
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
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uri,
      titles: null == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostBackendServiceUserImplCopyWith<$Res>
    implements $PostBackendServiceUserCopyWith<$Res> {
  factory _$$PostBackendServiceUserImplCopyWith(
          _$PostBackendServiceUserImpl value,
          $Res Function(_$PostBackendServiceUserImpl) then) =
      __$$PostBackendServiceUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, Uri avatar, List<String> titles});
}

/// @nodoc
class __$$PostBackendServiceUserImplCopyWithImpl<$Res>
    extends _$PostBackendServiceUserCopyWithImpl<$Res,
        _$PostBackendServiceUserImpl>
    implements _$$PostBackendServiceUserImplCopyWith<$Res> {
  __$$PostBackendServiceUserImplCopyWithImpl(
      _$PostBackendServiceUserImpl _value,
      $Res Function(_$PostBackendServiceUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? titles = null,
  }) {
    return _then(_$PostBackendServiceUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uri,
      titles: null == titles
          ? _value._titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PostBackendServiceUserImpl implements _PostBackendServiceUser {
  const _$PostBackendServiceUserImpl(
      {required this.id,
      required this.name,
      required this.avatar,
      required final List<String> titles})
      : _titles = titles;

  @override
  final String id;
  @override
  final String name;
  @override
  final Uri avatar;
  final List<String> _titles;
  @override
  List<String> get titles {
    if (_titles is EqualUnmodifiableListView) return _titles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titles);
  }

  @override
  String toString() {
    return 'PostBackendServiceUser(id: $id, name: $name, avatar: $avatar, titles: $titles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostBackendServiceUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality().equals(other._titles, _titles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar,
      const DeepCollectionEquality().hash(_titles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostBackendServiceUserImplCopyWith<_$PostBackendServiceUserImpl>
      get copyWith => __$$PostBackendServiceUserImplCopyWithImpl<
          _$PostBackendServiceUserImpl>(this, _$identity);
}

abstract class _PostBackendServiceUser implements PostBackendServiceUser {
  const factory _PostBackendServiceUser(
      {required final String id,
      required final String name,
      required final Uri avatar,
      required final List<String> titles}) = _$PostBackendServiceUserImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  Uri get avatar;
  @override
  List<String> get titles;
  @override
  @JsonKey(ignore: true)
  _$$PostBackendServiceUserImplCopyWith<_$PostBackendServiceUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostBackendServiceMessage {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  PostBackendServiceUser get author => throw _privateConstructorUsedError;
  List<PostBackendServiceMessage> get replies =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostBackendServiceMessageCopyWith<PostBackendServiceMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostBackendServiceMessageCopyWith<$Res> {
  factory $PostBackendServiceMessageCopyWith(PostBackendServiceMessage value,
          $Res Function(PostBackendServiceMessage) then) =
      _$PostBackendServiceMessageCopyWithImpl<$Res, PostBackendServiceMessage>;
  @useResult
  $Res call(
      {String id,
      String message,
      PostBackendServiceUser author,
      List<PostBackendServiceMessage> replies});

  $PostBackendServiceUserCopyWith<$Res> get author;
}

/// @nodoc
class _$PostBackendServiceMessageCopyWithImpl<$Res,
        $Val extends PostBackendServiceMessage>
    implements $PostBackendServiceMessageCopyWith<$Res> {
  _$PostBackendServiceMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? author = null,
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as PostBackendServiceUser,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<PostBackendServiceMessage>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostBackendServiceUserCopyWith<$Res> get author {
    return $PostBackendServiceUserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostBackendServiceMessageImplCopyWith<$Res>
    implements $PostBackendServiceMessageCopyWith<$Res> {
  factory _$$_PostBackendServiceMessageImplCopyWith(
          _$_PostBackendServiceMessageImpl value,
          $Res Function(_$_PostBackendServiceMessageImpl) then) =
      __$$_PostBackendServiceMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String message,
      PostBackendServiceUser author,
      List<PostBackendServiceMessage> replies});

  @override
  $PostBackendServiceUserCopyWith<$Res> get author;
}

/// @nodoc
class __$$_PostBackendServiceMessageImplCopyWithImpl<$Res>
    extends _$PostBackendServiceMessageCopyWithImpl<$Res,
        _$_PostBackendServiceMessageImpl>
    implements _$$_PostBackendServiceMessageImplCopyWith<$Res> {
  __$$_PostBackendServiceMessageImplCopyWithImpl(
      _$_PostBackendServiceMessageImpl _value,
      $Res Function(_$_PostBackendServiceMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? author = null,
    Object? replies = null,
  }) {
    return _then(_$_PostBackendServiceMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as PostBackendServiceUser,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<PostBackendServiceMessage>,
    ));
  }
}

/// @nodoc

class _$_PostBackendServiceMessageImpl implements __PostBackendServiceMessage {
  const _$_PostBackendServiceMessageImpl(
      {required this.id,
      required this.message,
      required this.author,
      required final List<PostBackendServiceMessage> replies})
      : _replies = replies;

  @override
  final String id;
  @override
  final String message;
  @override
  final PostBackendServiceUser author;
  final List<PostBackendServiceMessage> _replies;
  @override
  List<PostBackendServiceMessage> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'PostBackendServiceMessage(id: $id, message: $message, author: $author, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostBackendServiceMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, message, author,
      const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostBackendServiceMessageImplCopyWith<_$_PostBackendServiceMessageImpl>
      get copyWith => __$$_PostBackendServiceMessageImplCopyWithImpl<
          _$_PostBackendServiceMessageImpl>(this, _$identity);
}

abstract class __PostBackendServiceMessage
    implements PostBackendServiceMessage {
  const factory __PostBackendServiceMessage(
          {required final String id,
          required final String message,
          required final PostBackendServiceUser author,
          required final List<PostBackendServiceMessage> replies}) =
      _$_PostBackendServiceMessageImpl;

  @override
  String get id;
  @override
  String get message;
  @override
  PostBackendServiceUser get author;
  @override
  List<PostBackendServiceMessage> get replies;
  @override
  @JsonKey(ignore: true)
  _$$_PostBackendServiceMessageImplCopyWith<_$_PostBackendServiceMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
