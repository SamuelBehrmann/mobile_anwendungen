// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostPreviewAccount {
  String get name => throw _privateConstructorUsedError;
  Iterable<String> get titles => throw _privateConstructorUsedError;
  Uri get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostPreviewAccountCopyWith<PostPreviewAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPreviewAccountCopyWith<$Res> {
  factory $PostPreviewAccountCopyWith(
          PostPreviewAccount value, $Res Function(PostPreviewAccount) then) =
      _$PostPreviewAccountCopyWithImpl<$Res, PostPreviewAccount>;
  @useResult
  $Res call({String name, Iterable<String> titles, Uri imageUrl});
}

/// @nodoc
class _$PostPreviewAccountCopyWithImpl<$Res, $Val extends PostPreviewAccount>
    implements $PostPreviewAccountCopyWith<$Res> {
  _$PostPreviewAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? titles = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      titles: null == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as Iterable<String>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostPreview_AccountImplCopyWith<$Res>
    implements $PostPreviewAccountCopyWith<$Res> {
  factory _$$PostPreview_AccountImplCopyWith(_$PostPreview_AccountImpl value,
          $Res Function(_$PostPreview_AccountImpl) then) =
      __$$PostPreview_AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Iterable<String> titles, Uri imageUrl});
}

/// @nodoc
class __$$PostPreview_AccountImplCopyWithImpl<$Res>
    extends _$PostPreviewAccountCopyWithImpl<$Res, _$PostPreview_AccountImpl>
    implements _$$PostPreview_AccountImplCopyWith<$Res> {
  __$$PostPreview_AccountImplCopyWithImpl(_$PostPreview_AccountImpl _value,
      $Res Function(_$PostPreview_AccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? titles = null,
    Object? imageUrl = null,
  }) {
    return _then(_$PostPreview_AccountImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      titles: null == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as Iterable<String>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$PostPreview_AccountImpl implements PostPreview_Account {
  const _$PostPreview_AccountImpl(
      {required this.name, required this.titles, required this.imageUrl});

  @override
  final String name;
  @override
  final Iterable<String> titles;
  @override
  final Uri imageUrl;

  @override
  String toString() {
    return 'PostPreviewAccount(name: $name, titles: $titles, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPreview_AccountImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.titles, titles) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(titles), imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPreview_AccountImplCopyWith<_$PostPreview_AccountImpl> get copyWith =>
      __$$PostPreview_AccountImplCopyWithImpl<_$PostPreview_AccountImpl>(
          this, _$identity);
}

abstract class PostPreview_Account implements PostPreviewAccount {
  const factory PostPreview_Account(
      {required final String name,
      required final Iterable<String> titles,
      required final Uri imageUrl}) = _$PostPreview_AccountImpl;

  @override
  String get name;
  @override
  Iterable<String> get titles;
  @override
  Uri get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$PostPreview_AccountImplCopyWith<_$PostPreview_AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
