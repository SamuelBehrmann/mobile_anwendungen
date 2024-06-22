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
  @JsonKey(name: 'body')
  String get content => throw _privateConstructorUsedError;
  FirestoreBackendServiceUser get author => throw _privateConstructorUsedError;
  List<FirestoreBackendServiceMessage> get replies =>
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
      @JsonKey(name: 'body') String content,
      FirestoreBackendServiceUser author,
      List<FirestoreBackendServiceMessage> replies});

  $FirestoreBackendServiceUserCopyWith<$Res> get author;
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
              as FirestoreBackendServiceUser,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<FirestoreBackendServiceMessage>,
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
      @JsonKey(name: 'body') String content,
      FirestoreBackendServiceUser author,
      List<FirestoreBackendServiceMessage> replies});

  @override
  $FirestoreBackendServiceUserCopyWith<$Res> get author;
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
    Object? author = null,
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
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as FirestoreBackendServiceUser,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<FirestoreBackendServiceMessage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreBackendServicePostImpl extends _FirestoreBackendServicePost {
  const _$FirestoreBackendServicePostImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'body') required this.content,
      required this.author,
      required final List<FirestoreBackendServiceMessage> replies})
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
  @JsonKey(name: 'body')
  final String content;
  @override
  final FirestoreBackendServiceUser author;
  final List<FirestoreBackendServiceMessage> _replies;
  @override
  List<FirestoreBackendServiceMessage> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'FirestoreBackendServicePost(id: $id, title: $title, content: $content, author: $author, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreBackendServicePostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, author,
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
          @JsonKey(name: 'body') required final String content,
          required final FirestoreBackendServiceUser author,
          required final List<FirestoreBackendServiceMessage> replies}) =
      _$FirestoreBackendServicePostImpl;
  const _FirestoreBackendServicePost._() : super._();

  factory _FirestoreBackendServicePost.fromJson(Map<String, dynamic> json) =
      _$FirestoreBackendServicePostImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'body')
  String get content;
  @override
  FirestoreBackendServiceUser get author;
  @override
  List<FirestoreBackendServiceMessage> get replies;
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
  Uri get avatar => throw _privateConstructorUsedError;
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
  $Res call({String id, String name, Uri avatar, List<String> titles});
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
abstract class _$$FirestoreBackendServiceUserImplCopyWith<$Res>
    implements $FirestoreBackendServiceUserCopyWith<$Res> {
  factory _$$FirestoreBackendServiceUserImplCopyWith(
          _$FirestoreBackendServiceUserImpl value,
          $Res Function(_$FirestoreBackendServiceUserImpl) then) =
      __$$FirestoreBackendServiceUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, Uri avatar, List<String> titles});
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
    Object? avatar = null,
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
@JsonSerializable()
class _$FirestoreBackendServiceUserImpl extends _FirestoreBackendServiceUser {
  const _$FirestoreBackendServiceUserImpl(
      {required this.id,
      required this.name,
      required this.avatar,
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
    return 'FirestoreBackendServiceUser(id: $id, name: $name, avatar: $avatar, titles: $titles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreBackendServiceUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality().equals(other._titles, _titles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar,
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
      required final Uri avatar,
      required final List<String> titles}) = _$FirestoreBackendServiceUserImpl;
  const _FirestoreBackendServiceUser._() : super._();

  factory _FirestoreBackendServiceUser.fromJson(Map<String, dynamic> json) =
      _$FirestoreBackendServiceUserImpl.fromJson;

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
  _$$FirestoreBackendServiceUserImplCopyWith<_$FirestoreBackendServiceUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FirestoreBackendServiceMessage _$FirestoreBackendServiceMessageFromJson(
    Map<String, dynamic> json) {
  return _FirestoreBackendServiceMessage.fromJson(json);
}

/// @nodoc
mixin _$FirestoreBackendServiceMessage {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  FirestoreBackendServiceUser get author => throw _privateConstructorUsedError;
  List<FirestoreBackendServiceMessage> get replies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreBackendServiceMessageCopyWith<FirestoreBackendServiceMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreBackendServiceMessageCopyWith<$Res> {
  factory $FirestoreBackendServiceMessageCopyWith(
          FirestoreBackendServiceMessage value,
          $Res Function(FirestoreBackendServiceMessage) then) =
      _$FirestoreBackendServiceMessageCopyWithImpl<$Res,
          FirestoreBackendServiceMessage>;
  @useResult
  $Res call(
      {String id,
      String message,
      FirestoreBackendServiceUser author,
      List<FirestoreBackendServiceMessage> replies});

  $FirestoreBackendServiceUserCopyWith<$Res> get author;
}

/// @nodoc
class _$FirestoreBackendServiceMessageCopyWithImpl<$Res,
        $Val extends FirestoreBackendServiceMessage>
    implements $FirestoreBackendServiceMessageCopyWith<$Res> {
  _$FirestoreBackendServiceMessageCopyWithImpl(this._value, this._then);

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
              as FirestoreBackendServiceUser,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<FirestoreBackendServiceMessage>,
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
abstract class _$$FirestoreBackendServiceMessageImplCopyWith<$Res>
    implements $FirestoreBackendServiceMessageCopyWith<$Res> {
  factory _$$FirestoreBackendServiceMessageImplCopyWith(
          _$FirestoreBackendServiceMessageImpl value,
          $Res Function(_$FirestoreBackendServiceMessageImpl) then) =
      __$$FirestoreBackendServiceMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String message,
      FirestoreBackendServiceUser author,
      List<FirestoreBackendServiceMessage> replies});

  @override
  $FirestoreBackendServiceUserCopyWith<$Res> get author;
}

/// @nodoc
class __$$FirestoreBackendServiceMessageImplCopyWithImpl<$Res>
    extends _$FirestoreBackendServiceMessageCopyWithImpl<$Res,
        _$FirestoreBackendServiceMessageImpl>
    implements _$$FirestoreBackendServiceMessageImplCopyWith<$Res> {
  __$$FirestoreBackendServiceMessageImplCopyWithImpl(
      _$FirestoreBackendServiceMessageImpl _value,
      $Res Function(_$FirestoreBackendServiceMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? author = null,
    Object? replies = null,
  }) {
    return _then(_$FirestoreBackendServiceMessageImpl(
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
              as FirestoreBackendServiceUser,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<FirestoreBackendServiceMessage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreBackendServiceMessageImpl
    extends _FirestoreBackendServiceMessage {
  const _$FirestoreBackendServiceMessageImpl(
      {required this.id,
      required this.message,
      required this.author,
      required final List<FirestoreBackendServiceMessage> replies})
      : _replies = replies,
        super._();

  factory _$FirestoreBackendServiceMessageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreBackendServiceMessageImplFromJson(json);

  @override
  final String id;
  @override
  final String message;
  @override
  final FirestoreBackendServiceUser author;
  final List<FirestoreBackendServiceMessage> _replies;
  @override
  List<FirestoreBackendServiceMessage> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'FirestoreBackendServiceMessage(id: $id, message: $message, author: $author, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreBackendServiceMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, message, author,
      const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreBackendServiceMessageImplCopyWith<
          _$FirestoreBackendServiceMessageImpl>
      get copyWith => __$$FirestoreBackendServiceMessageImplCopyWithImpl<
          _$FirestoreBackendServiceMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreBackendServiceMessageImplToJson(
      this,
    );
  }
}

abstract class _FirestoreBackendServiceMessage
    extends FirestoreBackendServiceMessage {
  const factory _FirestoreBackendServiceMessage(
          {required final String id,
          required final String message,
          required final FirestoreBackendServiceUser author,
          required final List<FirestoreBackendServiceMessage> replies}) =
      _$FirestoreBackendServiceMessageImpl;
  const _FirestoreBackendServiceMessage._() : super._();

  factory _FirestoreBackendServiceMessage.fromJson(Map<String, dynamic> json) =
      _$FirestoreBackendServiceMessageImpl.fromJson;

  @override
  String get id;
  @override
  String get message;
  @override
  FirestoreBackendServiceUser get author;
  @override
  List<FirestoreBackendServiceMessage> get replies;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreBackendServiceMessageImplCopyWith<
          _$FirestoreBackendServiceMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
