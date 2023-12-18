// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterModelModelImpl _$$FilterModelModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterModelModelImpl(
      sortBy: json['sort_by'] == null
          ? SortBy.date
          : SortBy.fromJson(json['sort_by'] as String),
      sortByType: json['sort_type'] == null
          ? SortByType.ascending
          : SortByType.fromJson(json['sort_type'] as String),
      publishedFrom: _dateTimeFromJson(json['published_from'] as String),
      publishedTO: _dateTimeFromJson(json['published_to'] as String),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      query: json['query'] as String?,
    );

Map<String, dynamic> _$$FilterModelModelImplToJson(
        _$FilterModelModelImpl instance) =>
    <String, dynamic>{
      'sort_by': SortBy.toJson(instance.sortBy),
      'sort_type': SortByType.toJson(instance.sortByType),
      'published_from': _dateTimeToJson(instance.publishedFrom),
      'published_to': _dateTimeToJson(instance.publishedTO),
      'categories': instance.categories,
      'query': instance.query,
    };
