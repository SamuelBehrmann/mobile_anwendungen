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
abstract class _$$PostPreviewAccountImplCopyWith<$Res>
    implements $PostPreviewAccountCopyWith<$Res> {
  factory _$$PostPreviewAccountImplCopyWith(_$PostPreviewAccountImpl value,
          $Res Function(_$PostPreviewAccountImpl) then) =
      __$$PostPreviewAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Iterable<String> titles, Uri imageUrl});
}

/// @nodoc
class __$$PostPreviewAccountImplCopyWithImpl<$Res>
    extends _$PostPreviewAccountCopyWithImpl<$Res, _$PostPreviewAccountImpl>
    implements _$$PostPreviewAccountImplCopyWith<$Res> {
  __$$PostPreviewAccountImplCopyWithImpl(_$PostPreviewAccountImpl _value,
      $Res Function(_$PostPreviewAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? titles = null,
    Object? imageUrl = null,
  }) {
    return _then(_$PostPreviewAccountImpl(
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

class _$PostPreviewAccountImpl implements _PostPreviewAccount {
  const _$PostPreviewAccountImpl(
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
            other is _$PostPreviewAccountImpl &&
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
  _$$PostPreviewAccountImplCopyWith<_$PostPreviewAccountImpl> get copyWith =>
      __$$PostPreviewAccountImplCopyWithImpl<_$PostPreviewAccountImpl>(
          this, _$identity);
}

abstract class _PostPreviewAccount implements PostPreviewAccount {
  const factory _PostPreviewAccount(
      {required final String name,
      required final Iterable<String> titles,
      required final Uri imageUrl}) = _$PostPreviewAccountImpl;

  @override
  String get name;
  @override
  Iterable<String> get titles;
  @override
  Uri get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$PostPreviewAccountImplCopyWith<_$PostPreviewAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
