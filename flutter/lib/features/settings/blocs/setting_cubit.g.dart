// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingStateImpl _$$SettingStateImplFromJson(Map<String, dynamic> json) =>
    _$SettingStateImpl(
      notificationsEnabled: json['notificationsEnabled'] as bool? ?? false,
      favorites: (json['favorites'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SettingStateImplToJson(_$SettingStateImpl instance) =>
    <String, dynamic>{
      'notificationsEnabled': instance.notificationsEnabled,
      'favorites': instance.favorites,
    };
