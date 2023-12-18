// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchCubitModelImpl _$$SearchCubitModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchCubitModelImpl(
      filtered: (json['filtered'] as List<dynamic>)
          .map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      filter: FilterModel.fromJson(json['filter'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$SearchCubitModelImplToJson(
        _$SearchCubitModelImpl instance) =>
    <String, dynamic>{
      'filtered': instance.filtered,
      'filter': instance.filter,
      'isLoading': instance.isLoading,
    };
