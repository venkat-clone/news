// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchCubitState _$SearchCubitStateFromJson(Map<String, dynamic> json) {
  return _SearchCubitModel.fromJson(json);
}

/// @nodoc
mixin _$SearchCubitState {
  List<NewsModel> get filtered => throw _privateConstructorUsedError;
  FilterModel get filter => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCubitStateCopyWith<SearchCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCubitStateCopyWith<$Res> {
  factory $SearchCubitStateCopyWith(
          SearchCubitState value, $Res Function(SearchCubitState) then) =
      _$SearchCubitStateCopyWithImpl<$Res, SearchCubitState>;
  @useResult
  $Res call({List<NewsModel> filtered, FilterModel filter, bool isLoading});

  $FilterModelCopyWith<$Res> get filter;
}

/// @nodoc
class _$SearchCubitStateCopyWithImpl<$Res, $Val extends SearchCubitState>
    implements $SearchCubitStateCopyWith<$Res> {
  _$SearchCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filtered = null,
    Object? filter = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      filtered: null == filtered
          ? _value.filtered
          : filtered // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res> get filter {
    return $FilterModelCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchCubitModelImplCopyWith<$Res>
    implements $SearchCubitStateCopyWith<$Res> {
  factory _$$SearchCubitModelImplCopyWith(_$SearchCubitModelImpl value,
          $Res Function(_$SearchCubitModelImpl) then) =
      __$$SearchCubitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsModel> filtered, FilterModel filter, bool isLoading});

  @override
  $FilterModelCopyWith<$Res> get filter;
}

/// @nodoc
class __$$SearchCubitModelImplCopyWithImpl<$Res>
    extends _$SearchCubitStateCopyWithImpl<$Res, _$SearchCubitModelImpl>
    implements _$$SearchCubitModelImplCopyWith<$Res> {
  __$$SearchCubitModelImplCopyWithImpl(_$SearchCubitModelImpl _value,
      $Res Function(_$SearchCubitModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filtered = null,
    Object? filter = null,
    Object? isLoading = null,
  }) {
    return _then(_$SearchCubitModelImpl(
      filtered: null == filtered
          ? _value._filtered
          : filtered // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchCubitModelImpl implements _SearchCubitModel {
  const _$SearchCubitModelImpl(
      {required final List<NewsModel> filtered,
      required this.filter,
      this.isLoading = false})
      : _filtered = filtered;

  factory _$SearchCubitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchCubitModelImplFromJson(json);

  final List<NewsModel> _filtered;
  @override
  List<NewsModel> get filtered {
    if (_filtered is EqualUnmodifiableListView) return _filtered;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filtered);
  }

  @override
  final FilterModel filter;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SearchCubitState(filtered: $filtered, filter: $filter, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCubitModelImpl &&
            const DeepCollectionEquality().equals(other._filtered, _filtered) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_filtered), filter, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCubitModelImplCopyWith<_$SearchCubitModelImpl> get copyWith =>
      __$$SearchCubitModelImplCopyWithImpl<_$SearchCubitModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchCubitModelImplToJson(
      this,
    );
  }
}

abstract class _SearchCubitModel implements SearchCubitState {
  const factory _SearchCubitModel(
      {required final List<NewsModel> filtered,
      required final FilterModel filter,
      final bool isLoading}) = _$SearchCubitModelImpl;

  factory _SearchCubitModel.fromJson(Map<String, dynamic> json) =
      _$SearchCubitModelImpl.fromJson;

  @override
  List<NewsModel> get filtered;
  @override
  FilterModel get filter;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$SearchCubitModelImplCopyWith<_$SearchCubitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
