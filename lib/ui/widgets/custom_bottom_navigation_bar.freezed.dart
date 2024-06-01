// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_bottom_navigation_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomBottomNavBarItem {
  IconData get icon => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomBottomNavBarItemCopyWith<CustomBottomNavBarItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomBottomNavBarItemCopyWith<$Res> {
  factory $CustomBottomNavBarItemCopyWith(CustomBottomNavBarItem value,
          $Res Function(CustomBottomNavBarItem) then) =
      _$CustomBottomNavBarItemCopyWithImpl<$Res, CustomBottomNavBarItem>;
  @useResult
  $Res call({IconData icon, String label});
}

/// @nodoc
class _$CustomBottomNavBarItemCopyWithImpl<$Res,
        $Val extends CustomBottomNavBarItem>
    implements $CustomBottomNavBarItemCopyWith<$Res> {
  _$CustomBottomNavBarItemCopyWithImpl(this._value, this._then);

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
abstract class _$$BottomNavBarItemImplCopyWith<$Res>
    implements $CustomBottomNavBarItemCopyWith<$Res> {
  factory _$$BottomNavBarItemImplCopyWith(_$BottomNavBarItemImpl value,
          $Res Function(_$BottomNavBarItemImpl) then) =
      __$$BottomNavBarItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData icon, String label});
}

/// @nodoc
class __$$BottomNavBarItemImplCopyWithImpl<$Res>
    extends _$CustomBottomNavBarItemCopyWithImpl<$Res, _$BottomNavBarItemImpl>
    implements _$$BottomNavBarItemImplCopyWith<$Res> {
  __$$BottomNavBarItemImplCopyWithImpl(_$BottomNavBarItemImpl _value,
      $Res Function(_$BottomNavBarItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? label = null,
  }) {
    return _then(_$BottomNavBarItemImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BottomNavBarItemImpl implements _BottomNavBarItem {
  const _$BottomNavBarItemImpl({required this.icon, required this.label});

  @override
  final IconData icon;
  @override
  final String label;

  @override
  String toString() {
    return 'CustomBottomNavBarItem(icon: $icon, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavBarItemImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavBarItemImplCopyWith<_$BottomNavBarItemImpl> get copyWith =>
      __$$BottomNavBarItemImplCopyWithImpl<_$BottomNavBarItemImpl>(
          this, _$identity);
}

abstract class _BottomNavBarItem implements CustomBottomNavBarItem {
  const factory _BottomNavBarItem(
      {required final IconData icon,
      required final String label}) = _$BottomNavBarItemImpl;

  @override
  IconData get icon;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$BottomNavBarItemImplCopyWith<_$BottomNavBarItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
