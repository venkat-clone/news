// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingState _$SettingStateFromJson(Map<String, dynamic> json) {
  return _SettingState.fromJson(json);
}

/// @nodoc
mixin _$SettingState {
  bool get notificationsEnabled => throw _privateConstructorUsedError;
  List<String> get favorites => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call(
      {bool notificationsEnabled,
      List<String> favorites,
      @JsonKey(includeFromJson: false, includeToJson: false)
      File? profilePicture});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationsEnabled = null,
    Object? favorites = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
      notificationsEnabled: null == notificationsEnabled
          ? _value.notificationsEnabled
          : notificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
          _$SettingStateImpl value, $Res Function(_$SettingStateImpl) then) =
      __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool notificationsEnabled,
      List<String> favorites,
      @JsonKey(includeFromJson: false, includeToJson: false)
      File? profilePicture});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
      _$SettingStateImpl _value, $Res Function(_$SettingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationsEnabled = null,
    Object? favorites = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_$SettingStateImpl(
      notificationsEnabled: null == notificationsEnabled
          ? _value.notificationsEnabled
          : notificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl(
      {this.notificationsEnabled = false,
      final List<String> favorites = const [],
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.profilePicture})
      : _favorites = favorites;

  factory _$SettingStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingStateImplFromJson(json);

  @override
  @JsonKey()
  final bool notificationsEnabled;
  final List<String> _favorites;
  @override
  @JsonKey()
  List<String> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final File? profilePicture;

  @override
  String toString() {
    return 'SettingState(notificationsEnabled: $notificationsEnabled, favorites: $favorites, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            (identical(other.notificationsEnabled, notificationsEnabled) ||
                other.notificationsEnabled == notificationsEnabled) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notificationsEnabled,
      const DeepCollectionEquality().hash(_favorites), profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingStateImplToJson(
      this,
    );
  }
}

abstract class _SettingState implements SettingState {
  const factory _SettingState(
      {final bool notificationsEnabled,
      final List<String> favorites,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final File? profilePicture}) = _$SettingStateImpl;

  factory _SettingState.fromJson(Map<String, dynamic> json) =
      _$SettingStateImpl.fromJson;

  @override
  bool get notificationsEnabled;
  @override
  List<String> get favorites;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
