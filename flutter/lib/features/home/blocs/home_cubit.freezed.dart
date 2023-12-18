// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeCubitState _$HomeCubitStateFromJson(Map<String, dynamic> json) {
  return _HomeCubitState.fromJson(json);
}

/// @nodoc
mixin _$HomeCubitState {
  List<NewsModel> get newses => throw _privateConstructorUsedError;
  List<NewsModel> get filteredNews => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeCubitStateCopyWith<HomeCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCubitStateCopyWith<$Res> {
  factory $HomeCubitStateCopyWith(
          HomeCubitState value, $Res Function(HomeCubitState) then) =
      _$HomeCubitStateCopyWithImpl<$Res, HomeCubitState>;
  @useResult
  $Res call(
      {List<NewsModel> newses,
      List<NewsModel> filteredNews,
      bool isLoading,
      int selectedIndex});
}

/// @nodoc
class _$HomeCubitStateCopyWithImpl<$Res, $Val extends HomeCubitState>
    implements $HomeCubitStateCopyWith<$Res> {
  _$HomeCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newses = null,
    Object? filteredNews = null,
    Object? isLoading = null,
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      newses: null == newses
          ? _value.newses
          : newses // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      filteredNews: null == filteredNews
          ? _value.filteredNews
          : filteredNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeCubitStateImplCopyWith<$Res>
    implements $HomeCubitStateCopyWith<$Res> {
  factory _$$HomeCubitStateImplCopyWith(_$HomeCubitStateImpl value,
          $Res Function(_$HomeCubitStateImpl) then) =
      __$$HomeCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewsModel> newses,
      List<NewsModel> filteredNews,
      bool isLoading,
      int selectedIndex});
}

/// @nodoc
class __$$HomeCubitStateImplCopyWithImpl<$Res>
    extends _$HomeCubitStateCopyWithImpl<$Res, _$HomeCubitStateImpl>
    implements _$$HomeCubitStateImplCopyWith<$Res> {
  __$$HomeCubitStateImplCopyWithImpl(
      _$HomeCubitStateImpl _value, $Res Function(_$HomeCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newses = null,
    Object? filteredNews = null,
    Object? isLoading = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$HomeCubitStateImpl(
      newses: null == newses
          ? _value._newses
          : newses // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      filteredNews: null == filteredNews
          ? _value._filteredNews
          : filteredNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeCubitStateImpl implements _HomeCubitState {
  const _$HomeCubitStateImpl(
      {final List<NewsModel> newses = const [],
      final List<NewsModel> filteredNews = const [],
      this.isLoading = false,
      this.selectedIndex = 0})
      : _newses = newses,
        _filteredNews = filteredNews;

  factory _$HomeCubitStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeCubitStateImplFromJson(json);

  final List<NewsModel> _newses;
  @override
  @JsonKey()
  List<NewsModel> get newses {
    if (_newses is EqualUnmodifiableListView) return _newses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newses);
  }

  final List<NewsModel> _filteredNews;
  @override
  @JsonKey()
  List<NewsModel> get filteredNews {
    if (_filteredNews is EqualUnmodifiableListView) return _filteredNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredNews);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'HomeCubitState(newses: $newses, filteredNews: $filteredNews, isLoading: $isLoading, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeCubitStateImpl &&
            const DeepCollectionEquality().equals(other._newses, _newses) &&
            const DeepCollectionEquality()
                .equals(other._filteredNews, _filteredNews) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newses),
      const DeepCollectionEquality().hash(_filteredNews),
      isLoading,
      selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeCubitStateImplCopyWith<_$HomeCubitStateImpl> get copyWith =>
      __$$HomeCubitStateImplCopyWithImpl<_$HomeCubitStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeCubitStateImplToJson(
      this,
    );
  }
}

abstract class _HomeCubitState implements HomeCubitState {
  const factory _HomeCubitState(
      {final List<NewsModel> newses,
      final List<NewsModel> filteredNews,
      final bool isLoading,
      final int selectedIndex}) = _$HomeCubitStateImpl;

  factory _HomeCubitState.fromJson(Map<String, dynamic> json) =
      _$HomeCubitStateImpl.fromJson;

  @override
  List<NewsModel> get newses;
  @override
  List<NewsModel> get filteredNews;
  @override
  bool get isLoading;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$HomeCubitStateImplCopyWith<_$HomeCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
