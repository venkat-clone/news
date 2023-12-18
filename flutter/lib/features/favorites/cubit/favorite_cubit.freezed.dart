// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CubitFavoriteState _$CubitFavoriteStateFromJson(Map<String, dynamic> json) {
  return _CubitFavoriteState.fromJson(json);
}

/// @nodoc
mixin _$CubitFavoriteState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<NewsModel> get favorites => throw _privateConstructorUsedError;
  List<NewsModel>? get searched => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CubitFavoriteStateCopyWith<CubitFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CubitFavoriteStateCopyWith<$Res> {
  factory $CubitFavoriteStateCopyWith(
          CubitFavoriteState value, $Res Function(CubitFavoriteState) then) =
      _$CubitFavoriteStateCopyWithImpl<$Res, CubitFavoriteState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<NewsModel> favorites,
      List<NewsModel>? searched,
      String? query});
}

/// @nodoc
class _$CubitFavoriteStateCopyWithImpl<$Res, $Val extends CubitFavoriteState>
    implements $CubitFavoriteStateCopyWith<$Res> {
  _$CubitFavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? favorites = null,
    Object? searched = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      searched: freezed == searched
          ? _value.searched
          : searched // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CubitFavoriteStateImplCopyWith<$Res>
    implements $CubitFavoriteStateCopyWith<$Res> {
  factory _$$CubitFavoriteStateImplCopyWith(_$CubitFavoriteStateImpl value,
          $Res Function(_$CubitFavoriteStateImpl) then) =
      __$$CubitFavoriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<NewsModel> favorites,
      List<NewsModel>? searched,
      String? query});
}

/// @nodoc
class __$$CubitFavoriteStateImplCopyWithImpl<$Res>
    extends _$CubitFavoriteStateCopyWithImpl<$Res, _$CubitFavoriteStateImpl>
    implements _$$CubitFavoriteStateImplCopyWith<$Res> {
  __$$CubitFavoriteStateImplCopyWithImpl(_$CubitFavoriteStateImpl _value,
      $Res Function(_$CubitFavoriteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? favorites = null,
    Object? searched = freezed,
    Object? query = freezed,
  }) {
    return _then(_$CubitFavoriteStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      searched: freezed == searched
          ? _value._searched
          : searched // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CubitFavoriteStateImpl implements _CubitFavoriteState {
  const _$CubitFavoriteStateImpl(
      {this.isLoading = false,
      final List<NewsModel> favorites = const [],
      final List<NewsModel>? searched = const [],
      this.query})
      : _favorites = favorites,
        _searched = searched;

  factory _$CubitFavoriteStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CubitFavoriteStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<NewsModel> _favorites;
  @override
  @JsonKey()
  List<NewsModel> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  final List<NewsModel>? _searched;
  @override
  @JsonKey()
  List<NewsModel>? get searched {
    final value = _searched;
    if (value == null) return null;
    if (_searched is EqualUnmodifiableListView) return _searched;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? query;

  @override
  String toString() {
    return 'CubitFavoriteState(isLoading: $isLoading, favorites: $favorites, searched: $searched, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CubitFavoriteStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality().equals(other._searched, _searched) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(_searched),
      query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CubitFavoriteStateImplCopyWith<_$CubitFavoriteStateImpl> get copyWith =>
      __$$CubitFavoriteStateImplCopyWithImpl<_$CubitFavoriteStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CubitFavoriteStateImplToJson(
      this,
    );
  }
}

abstract class _CubitFavoriteState implements CubitFavoriteState {
  const factory _CubitFavoriteState(
      {final bool isLoading,
      final List<NewsModel> favorites,
      final List<NewsModel>? searched,
      final String? query}) = _$CubitFavoriteStateImpl;

  factory _CubitFavoriteState.fromJson(Map<String, dynamic> json) =
      _$CubitFavoriteStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<NewsModel> get favorites;
  @override
  List<NewsModel>? get searched;
  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$CubitFavoriteStateImplCopyWith<_$CubitFavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
