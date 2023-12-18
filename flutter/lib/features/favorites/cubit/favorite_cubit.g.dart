// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CubitFavoriteStateImpl _$$CubitFavoriteStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CubitFavoriteStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      favorites: (json['favorites'] as List<dynamic>?)
              ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      searched: (json['searched'] as List<dynamic>?)
              ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      query: json['query'] as String?,
    );

Map<String, dynamic> _$$CubitFavoriteStateImplToJson(
        _$CubitFavoriteStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'favorites': instance.favorites,
      'searched': instance.searched,
      'query': instance.query,
    };
