// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreatePostModel {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePostModelCopyWith<CreatePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostModelCopyWith<$Res> {
  factory $CreatePostModelCopyWith(
          CreatePostModel value, $Res Function(CreatePostModel) then) =
      _$CreatePostModelCopyWithImpl<$Res, CreatePostModel>;
  @useResult
  $Res call({String title, String body});
}

/// @nodoc
class _$CreatePostModelCopyWithImpl<$Res, $Val extends CreatePostModel>
    implements $CreatePostModelCopyWith<$Res> {
  _$CreatePostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$CreatePostModelImplCopyWith<$Res>
    implements $CreatePostModelCopyWith<$Res> {
  factory _$$CreatePostModelImplCopyWith(_$CreatePostModelImpl value,
          $Res Function(_$CreatePostModelImpl) then) =
      __$$CreatePostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String body});
}

/// @nodoc
class __$$CreatePostModelImplCopyWithImpl<$Res>
    extends _$CreatePostModelCopyWithImpl<$Res, _$CreatePostModelImpl>
    implements _$$CreatePostModelImplCopyWith<$Res> {
  __$$CreatePostModelImplCopyWithImpl(
      _$CreatePostModelImpl _value, $Res Function(_$CreatePostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$CreatePostModelImpl(
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

class _$CreatePostModelImpl implements _CreatePostModel {
  const _$CreatePostModelImpl({required this.title, required this.body});

  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'CreatePostModel(title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostModelImplCopyWith<_$CreatePostModelImpl> get copyWith =>
      __$$CreatePostModelImplCopyWithImpl<_$CreatePostModelImpl>(
          this, _$identity);
}

abstract class _CreatePostModel implements CreatePostModel {
  const factory _CreatePostModel(
      {required final String title,
      required final String body}) = _$CreatePostModelImpl;

  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$CreatePostModelImplCopyWith<_$CreatePostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
