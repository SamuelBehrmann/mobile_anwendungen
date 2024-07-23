// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchModel {
  String? get query => throw _privateConstructorUsedError;
  List<SearchModelPost> get filteredResults =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res, SearchModel>;
  @useResult
  $Res call({String? query, List<SearchModelPost> filteredResults});
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res, $Val extends SearchModel>
    implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? filteredResults = null,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      filteredResults: null == filteredResults
          ? _value.filteredResults
          : filteredResults // ignore: cast_nullable_to_non_nullable
              as List<SearchModelPost>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchModelImplCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelImplCopyWith(
          _$SearchModelImpl value, $Res Function(_$SearchModelImpl) then) =
      __$$SearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query, List<SearchModelPost> filteredResults});
}

/// @nodoc
class __$$SearchModelImplCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelImpl>
    implements _$$SearchModelImplCopyWith<$Res> {
  __$$SearchModelImplCopyWithImpl(
      _$SearchModelImpl _value, $Res Function(_$SearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? filteredResults = null,
  }) {
    return _then(_$SearchModelImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      filteredResults: null == filteredResults
          ? _value._filteredResults
          : filteredResults // ignore: cast_nullable_to_non_nullable
              as List<SearchModelPost>,
    ));
  }
}

/// @nodoc

class _$SearchModelImpl implements _SearchModel {
  const _$SearchModelImpl(
      {this.query,
      final List<SearchModelPost> filteredResults = const <SearchModelPost>[]})
      : _filteredResults = filteredResults;

  @override
  final String? query;
  final List<SearchModelPost> _filteredResults;
  @override
  @JsonKey()
  List<SearchModelPost> get filteredResults {
    if (_filteredResults is EqualUnmodifiableListView) return _filteredResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredResults);
  }

  @override
  String toString() {
    return 'SearchModel(query: $query, filteredResults: $filteredResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._filteredResults, _filteredResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query,
      const DeepCollectionEquality().hash(_filteredResults));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      __$$SearchModelImplCopyWithImpl<_$SearchModelImpl>(this, _$identity);
}

abstract class _SearchModel implements SearchModel {
  const factory _SearchModel(
      {final String? query,
      final List<SearchModelPost> filteredResults}) = _$SearchModelImpl;

  @override
  String? get query;
  @override
  List<SearchModelPost> get filteredResults;
  @override
  @JsonKey(ignore: true)
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchModelPost {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchModelPostCopyWith<SearchModelPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelPostCopyWith<$Res> {
  factory $SearchModelPostCopyWith(
          SearchModelPost value, $Res Function(SearchModelPost) then) =
      _$SearchModelPostCopyWithImpl<$Res, SearchModelPost>;
  @useResult
  $Res call({String id, String title, String body});
}

/// @nodoc
class _$SearchModelPostCopyWithImpl<$Res, $Val extends SearchModelPost>
    implements $SearchModelPostCopyWith<$Res> {
  _$SearchModelPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
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
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchModelPostImplCopyWith<$Res>
    implements $SearchModelPostCopyWith<$Res> {
  factory _$$SearchModelPostImplCopyWith(_$SearchModelPostImpl value,
          $Res Function(_$SearchModelPostImpl) then) =
      __$$SearchModelPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String body});
}

/// @nodoc
class __$$SearchModelPostImplCopyWithImpl<$Res>
    extends _$SearchModelPostCopyWithImpl<$Res, _$SearchModelPostImpl>
    implements _$$SearchModelPostImplCopyWith<$Res> {
  __$$SearchModelPostImplCopyWithImpl(
      _$SearchModelPostImpl _value, $Res Function(_$SearchModelPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$SearchModelPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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

class _$SearchModelPostImpl implements _SearchModelPost {
  const _$SearchModelPostImpl(
      {required this.id, required this.title, required this.body});

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'SearchModelPost(id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelPostImplCopyWith<_$SearchModelPostImpl> get copyWith =>
      __$$SearchModelPostImplCopyWithImpl<_$SearchModelPostImpl>(
          this, _$identity);
}

abstract class _SearchModelPost implements SearchModelPost {
  const factory _SearchModelPost(
      {required final String id,
      required final String title,
      required final String body}) = _$SearchModelPostImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$SearchModelPostImplCopyWith<_$SearchModelPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
