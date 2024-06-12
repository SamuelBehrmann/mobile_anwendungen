// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostModel {
  PostModelPost get post => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call({PostModelPost post});

  $PostModelPostCopyWith<$Res> get post;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostModelPost,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostModelPostCopyWith<$Res> get post {
    return $PostModelPostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
          _$PostModelImpl value, $Res Function(_$PostModelImpl) then) =
      __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostModelPost post});

  @override
  $PostModelPostCopyWith<$Res> get post;
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
      _$PostModelImpl _value, $Res Function(_$PostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$PostModelImpl(
      null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostModelPost,
    ));
  }
}

/// @nodoc

class _$PostModelImpl implements _PostModel {
  const _$PostModelImpl(this.post);

  @override
  final PostModelPost post;

  @override
  String toString() {
    return 'PostModel(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(final PostModelPost post) = _$PostModelImpl;

  @override
  PostModelPost get post;
  @override
  @JsonKey(ignore: true)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostModelPost {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  PostModelUser get author => throw _privateConstructorUsedError;
  List<PostModelMessage> get replies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostModelPostCopyWith<PostModelPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelPostCopyWith<$Res> {
  factory $PostModelPostCopyWith(
          PostModelPost value, $Res Function(PostModelPost) then) =
      _$PostModelPostCopyWithImpl<$Res, PostModelPost>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      PostModelUser author,
      List<PostModelMessage> replies});

  $PostModelUserCopyWith<$Res> get author;
}

/// @nodoc
class _$PostModelPostCopyWithImpl<$Res, $Val extends PostModelPost>
    implements $PostModelPostCopyWith<$Res> {
  _$PostModelPostCopyWithImpl(this._value, this._then);

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
              as PostModelUser,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<PostModelMessage>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostModelUserCopyWith<$Res> get author {
    return $PostModelUserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostModelPostImplCopyWith<$Res>
    implements $PostModelPostCopyWith<$Res> {
  factory _$$PostModelPostImplCopyWith(
          _$PostModelPostImpl value, $Res Function(_$PostModelPostImpl) then) =
      __$$PostModelPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      PostModelUser author,
      List<PostModelMessage> replies});

  @override
  $PostModelUserCopyWith<$Res> get author;
}

/// @nodoc
class __$$PostModelPostImplCopyWithImpl<$Res>
    extends _$PostModelPostCopyWithImpl<$Res, _$PostModelPostImpl>
    implements _$$PostModelPostImplCopyWith<$Res> {
  __$$PostModelPostImplCopyWithImpl(
      _$PostModelPostImpl _value, $Res Function(_$PostModelPostImpl) _then)
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
    return _then(_$PostModelPostImpl(
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
              as PostModelUser,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<PostModelMessage>,
    ));
  }
}

/// @nodoc

class _$PostModelPostImpl implements _PostModelPost {
  const _$PostModelPostImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.author,
      required final List<PostModelMessage> replies})
      : _replies = replies;

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final PostModelUser author;
  final List<PostModelMessage> _replies;
  @override
  List<PostModelMessage> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'PostModelPost(id: $id, title: $title, content: $content, author: $author, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelPostImpl &&
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
  _$$PostModelPostImplCopyWith<_$PostModelPostImpl> get copyWith =>
      __$$PostModelPostImplCopyWithImpl<_$PostModelPostImpl>(this, _$identity);
}

abstract class _PostModelPost implements PostModelPost {
  const factory _PostModelPost(
      {required final String id,
      required final String title,
      required final String content,
      required final PostModelUser author,
      required final List<PostModelMessage> replies}) = _$PostModelPostImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  PostModelUser get author;
  @override
  List<PostModelMessage> get replies;
  @override
  @JsonKey(ignore: true)
  _$$PostModelPostImplCopyWith<_$PostModelPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostModelMessage {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  PostModelUser get author => throw _privateConstructorUsedError;
  List<PostModelMessage> get replies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostModelMessageCopyWith<PostModelMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelMessageCopyWith<$Res> {
  factory $PostModelMessageCopyWith(
          PostModelMessage value, $Res Function(PostModelMessage) then) =
      _$PostModelMessageCopyWithImpl<$Res, PostModelMessage>;
  @useResult
  $Res call(
      {String id,
      String message,
      String title,
      PostModelUser author,
      List<PostModelMessage> replies});

  $PostModelUserCopyWith<$Res> get author;
}

/// @nodoc
class _$PostModelMessageCopyWithImpl<$Res, $Val extends PostModelMessage>
    implements $PostModelMessageCopyWith<$Res> {
  _$PostModelMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? title = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as PostModelUser,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<PostModelMessage>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostModelUserCopyWith<$Res> get author {
    return $PostModelUserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostModelMessageImplCopyWith<$Res>
    implements $PostModelMessageCopyWith<$Res> {
  factory _$$PostModelMessageImplCopyWith(_$PostModelMessageImpl value,
          $Res Function(_$PostModelMessageImpl) then) =
      __$$PostModelMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String message,
      String title,
      PostModelUser author,
      List<PostModelMessage> replies});

  @override
  $PostModelUserCopyWith<$Res> get author;
}

/// @nodoc
class __$$PostModelMessageImplCopyWithImpl<$Res>
    extends _$PostModelMessageCopyWithImpl<$Res, _$PostModelMessageImpl>
    implements _$$PostModelMessageImplCopyWith<$Res> {
  __$$PostModelMessageImplCopyWithImpl(_$PostModelMessageImpl _value,
      $Res Function(_$PostModelMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? title = null,
    Object? author = null,
    Object? replies = null,
  }) {
    return _then(_$PostModelMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as PostModelUser,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<PostModelMessage>,
    ));
  }
}

/// @nodoc

class _$PostModelMessageImpl implements _PostModelMessage {
  const _$PostModelMessageImpl(
      {required this.id,
      required this.message,
      required this.title,
      required this.author,
      required final List<PostModelMessage> replies})
      : _replies = replies;

  @override
  final String id;
  @override
  final String message;
  @override
  final String title;
  @override
  final PostModelUser author;
  final List<PostModelMessage> _replies;
  @override
  List<PostModelMessage> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'PostModelMessage(id: $id, message: $message, title: $title, author: $author, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, message, title, author,
      const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelMessageImplCopyWith<_$PostModelMessageImpl> get copyWith =>
      __$$PostModelMessageImplCopyWithImpl<_$PostModelMessageImpl>(
          this, _$identity);
}

abstract class _PostModelMessage implements PostModelMessage {
  const factory _PostModelMessage(
      {required final String id,
      required final String message,
      required final String title,
      required final PostModelUser author,
      required final List<PostModelMessage> replies}) = _$PostModelMessageImpl;

  @override
  String get id;
  @override
  String get message;
  @override
  String get title;
  @override
  PostModelUser get author;
  @override
  List<PostModelMessage> get replies;
  @override
  @JsonKey(ignore: true)
  _$$PostModelMessageImplCopyWith<_$PostModelMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostModelUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uri get avatar => throw _privateConstructorUsedError;
  List<String> get titles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostModelUserCopyWith<PostModelUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelUserCopyWith<$Res> {
  factory $PostModelUserCopyWith(
          PostModelUser value, $Res Function(PostModelUser) then) =
      _$PostModelUserCopyWithImpl<$Res, PostModelUser>;
  @useResult
  $Res call({String id, String name, Uri avatar, List<String> titles});
}

/// @nodoc
class _$PostModelUserCopyWithImpl<$Res, $Val extends PostModelUser>
    implements $PostModelUserCopyWith<$Res> {
  _$PostModelUserCopyWithImpl(this._value, this._then);

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
abstract class _$$PostModelUserImplCopyWith<$Res>
    implements $PostModelUserCopyWith<$Res> {
  factory _$$PostModelUserImplCopyWith(
          _$PostModelUserImpl value, $Res Function(_$PostModelUserImpl) then) =
      __$$PostModelUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, Uri avatar, List<String> titles});
}

/// @nodoc
class __$$PostModelUserImplCopyWithImpl<$Res>
    extends _$PostModelUserCopyWithImpl<$Res, _$PostModelUserImpl>
    implements _$$PostModelUserImplCopyWith<$Res> {
  __$$PostModelUserImplCopyWithImpl(
      _$PostModelUserImpl _value, $Res Function(_$PostModelUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? titles = null,
  }) {
    return _then(_$PostModelUserImpl(
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

class _$PostModelUserImpl implements _PostModelUser {
  const _$PostModelUserImpl(
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
    return 'PostModelUser(id: $id, name: $name, avatar: $avatar, titles: $titles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelUserImpl &&
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
  _$$PostModelUserImplCopyWith<_$PostModelUserImpl> get copyWith =>
      __$$PostModelUserImplCopyWithImpl<_$PostModelUserImpl>(this, _$identity);
}

abstract class _PostModelUser implements PostModelUser {
  const factory _PostModelUser(
      {required final String id,
      required final String name,
      required final Uri avatar,
      required final List<String> titles}) = _$PostModelUserImpl;

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
  _$$PostModelUserImplCopyWith<_$PostModelUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
