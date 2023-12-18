// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeCubitStateImpl _$$HomeCubitStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeCubitStateImpl(
      newses: (json['newses'] as List<dynamic>?)
              ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      filteredNews: (json['filteredNews'] as List<dynamic>?)
              ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      selectedIndex: json['selectedIndex'] as int? ?? 0,
    );

Map<String, dynamic> _$$HomeCubitStateImplToJson(
        _$HomeCubitStateImpl instance) =>
    <String, dynamic>{
      'newses': instance.newses,
      'filteredNews': instance.filteredNews,
      'isLoading': instance.isLoading,
      'selectedIndex': instance.selectedIndex,
    };
