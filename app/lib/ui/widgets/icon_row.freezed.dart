// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icon_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IconWithLabel {
  IconData get icon => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IconWithLabelCopyWith<IconWithLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconWithLabelCopyWith<$Res> {
  factory $IconWithLabelCopyWith(
          IconWithLabel value, $Res Function(IconWithLabel) then) =
      _$IconWithLabelCopyWithImpl<$Res, IconWithLabel>;
  @useResult
  $Res call({IconData icon, String label});
}

/// @nodoc
class _$IconWithLabelCopyWithImpl<$Res, $Val extends IconWithLabel>
    implements $IconWithLabelCopyWith<$Res> {
  _$IconWithLabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IconWithLabelImplCopyWith<$Res>
    implements $IconWithLabelCopyWith<$Res> {
  factory _$$IconWithLabelImplCopyWith(
          _$IconWithLabelImpl value, $Res Function(_$IconWithLabelImpl) then) =
      __$$IconWithLabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData icon, String label});
}

/// @nodoc
class __$$IconWithLabelImplCopyWithImpl<$Res>
    extends _$IconWithLabelCopyWithImpl<$Res, _$IconWithLabelImpl>
    implements _$$IconWithLabelImplCopyWith<$Res> {
  __$$IconWithLabelImplCopyWithImpl(
      _$IconWithLabelImpl _value, $Res Function(_$IconWithLabelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? label = null,
  }) {
    return _then(_$IconWithLabelImpl(
      null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IconWithLabelImpl implements _IconWithLabel {
  const _$IconWithLabelImpl(this.icon, this.label);

  @override
  final IconData icon;
  @override
  final String label;

  @override
  String toString() {
    return 'IconWithLabel(icon: $icon, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconWithLabelImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IconWithLabelImplCopyWith<_$IconWithLabelImpl> get copyWith =>
      __$$IconWithLabelImplCopyWithImpl<_$IconWithLabelImpl>(this, _$identity);
}

abstract class _IconWithLabel implements IconWithLabel {
  const factory _IconWithLabel(final IconData icon, final String label) =
      _$IconWithLabelImpl;

  @override
  IconData get icon;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$IconWithLabelImplCopyWith<_$IconWithLabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
