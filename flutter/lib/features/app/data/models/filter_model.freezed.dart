// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterModel _$FilterModelFromJson(Map<String, dynamic> json) {
  return _FilterModelModel.fromJson(json);
}

/// @nodoc
mixin _$FilterModel {
  @JsonKey(name: 'sort_by', fromJson: SortBy.fromJson, toJson: SortBy.toJson)
  SortBy get sortBy => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'sort_type',
      fromJson: SortByType.fromJson,
      toJson: SortByType.toJson)
  SortByType get sortByType => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'published_from',
      fromJson: _dateTimeFromJson,
      toJson: _dateTimeToJson)
  DateTime? get publishedFrom => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'published_to',
      fromJson: _dateTimeFromJson,
      toJson: _dateTimeToJson)
  DateTime? get publishedTO => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) then) =
      _$FilterModelCopyWithImpl<$Res, FilterModel>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'sort_by', fromJson: SortBy.fromJson, toJson: SortBy.toJson)
      SortBy sortBy,
      @JsonKey(
          name: 'sort_type',
          fromJson: SortByType.fromJson,
          toJson: SortByType.toJson)
      SortByType sortByType,
      @JsonKey(
          name: 'published_from',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      DateTime? publishedFrom,
      @JsonKey(
          name: 'published_to',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      DateTime? publishedTO,
      List<String>? categories,
      String? query});
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res, $Val extends FilterModel>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
    Object? sortByType = null,
    Object? publishedFrom = freezed,
    Object? publishedTO = freezed,
    Object? categories = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      sortByType: null == sortByType
          ? _value.sortByType
          : sortByType // ignore: cast_nullable_to_non_nullable
              as SortByType,
      publishedFrom: freezed == publishedFrom
          ? _value.publishedFrom
          : publishedFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedTO: freezed == publishedTO
          ? _value.publishedTO
          : publishedTO // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterModelModelImplCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$FilterModelModelImplCopyWith(_$FilterModelModelImpl value,
          $Res Function(_$FilterModelModelImpl) then) =
      __$$FilterModelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'sort_by', fromJson: SortBy.fromJson, toJson: SortBy.toJson)
      SortBy sortBy,
      @JsonKey(
          name: 'sort_type',
          fromJson: SortByType.fromJson,
          toJson: SortByType.toJson)
      SortByType sortByType,
      @JsonKey(
          name: 'published_from',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      DateTime? publishedFrom,
      @JsonKey(
          name: 'published_to',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      DateTime? publishedTO,
      List<String>? categories,
      String? query});
}

/// @nodoc
class __$$FilterModelModelImplCopyWithImpl<$Res>
    extends _$FilterModelCopyWithImpl<$Res, _$FilterModelModelImpl>
    implements _$$FilterModelModelImplCopyWith<$Res> {
  __$$FilterModelModelImplCopyWithImpl(_$FilterModelModelImpl _value,
      $Res Function(_$FilterModelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
    Object? sortByType = null,
    Object? publishedFrom = freezed,
    Object? publishedTO = freezed,
    Object? categories = freezed,
    Object? query = freezed,
  }) {
    return _then(_$FilterModelModelImpl(
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      sortByType: null == sortByType
          ? _value.sortByType
          : sortByType // ignore: cast_nullable_to_non_nullable
              as SortByType,
      publishedFrom: freezed == publishedFrom
          ? _value.publishedFrom
          : publishedFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedTO: freezed == publishedTO
          ? _value.publishedTO
          : publishedTO // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterModelModelImpl implements _FilterModelModel {
  const _$FilterModelModelImpl(
      {@JsonKey(
          name: 'sort_by', fromJson: SortBy.fromJson, toJson: SortBy.toJson)
      this.sortBy = SortBy.date,
      @JsonKey(
          name: 'sort_type',
          fromJson: SortByType.fromJson,
          toJson: SortByType.toJson)
      this.sortByType = SortByType.ascending,
      @JsonKey(
          name: 'published_from',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      this.publishedFrom,
      @JsonKey(
          name: 'published_to',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      this.publishedTO,
      final List<String>? categories,
      this.query})
      : _categories = categories;

  factory _$FilterModelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterModelModelImplFromJson(json);

  @override
  @JsonKey(name: 'sort_by', fromJson: SortBy.fromJson, toJson: SortBy.toJson)
  final SortBy sortBy;
  @override
  @JsonKey(
      name: 'sort_type',
      fromJson: SortByType.fromJson,
      toJson: SortByType.toJson)
  final SortByType sortByType;
  @override
  @JsonKey(
      name: 'published_from',
      fromJson: _dateTimeFromJson,
      toJson: _dateTimeToJson)
  final DateTime? publishedFrom;
  @override
  @JsonKey(
      name: 'published_to',
      fromJson: _dateTimeFromJson,
      toJson: _dateTimeToJson)
  final DateTime? publishedTO;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? query;

  @override
  String toString() {
    return 'FilterModel(sortBy: $sortBy, sortByType: $sortByType, publishedFrom: $publishedFrom, publishedTO: $publishedTO, categories: $categories, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterModelModelImpl &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortByType, sortByType) ||
                other.sortByType == sortByType) &&
            (identical(other.publishedFrom, publishedFrom) ||
                other.publishedFrom == publishedFrom) &&
            (identical(other.publishedTO, publishedTO) ||
                other.publishedTO == publishedTO) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sortBy,
      sortByType,
      publishedFrom,
      publishedTO,
      const DeepCollectionEquality().hash(_categories),
      query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterModelModelImplCopyWith<_$FilterModelModelImpl> get copyWith =>
      __$$FilterModelModelImplCopyWithImpl<_$FilterModelModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterModelModelImplToJson(
      this,
    );
  }
}

abstract class _FilterModelModel implements FilterModel {
  const factory _FilterModelModel(
      {@JsonKey(
          name: 'sort_by', fromJson: SortBy.fromJson, toJson: SortBy.toJson)
      final SortBy sortBy,
      @JsonKey(
          name: 'sort_type',
          fromJson: SortByType.fromJson,
          toJson: SortByType.toJson)
      final SortByType sortByType,
      @JsonKey(
          name: 'published_from',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      final DateTime? publishedFrom,
      @JsonKey(
          name: 'published_to',
          fromJson: _dateTimeFromJson,
          toJson: _dateTimeToJson)
      final DateTime? publishedTO,
      final List<String>? categories,
      final String? query}) = _$FilterModelModelImpl;

  factory _FilterModelModel.fromJson(Map<String, dynamic> json) =
      _$FilterModelModelImpl.fromJson;

  @override
  @JsonKey(name: 'sort_by', fromJson: SortBy.fromJson, toJson: SortBy.toJson)
  SortBy get sortBy;
  @override
  @JsonKey(
      name: 'sort_type',
      fromJson: SortByType.fromJson,
      toJson: SortByType.toJson)
  SortByType get sortByType;
  @override
  @JsonKey(
      name: 'published_from',
      fromJson: _dateTimeFromJson,
      toJson: _dateTimeToJson)
  DateTime? get publishedFrom;
  @override
  @JsonKey(
      name: 'published_to',
      fromJson: _dateTimeFromJson,
      toJson: _dateTimeToJson)
  DateTime? get publishedTO;
  @override
  List<String>? get categories;
  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$FilterModelModelImplCopyWith<_$FilterModelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
