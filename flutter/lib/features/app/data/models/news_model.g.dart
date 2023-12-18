// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      id: json['id'] as int?,
      articleId: json['article_id'] as String,
      category: json['category'] as String?,
      sourceId: json['source_id'] as String?,
      description: json['description'] as String,
      content: json['content'] as String,
      title: json['title'] as String,
      image: json['image'] as String?,
      link: json['link'] as String?,
      likes: json['likes'] as int?,
      saved: json['saved'] as bool? ?? false,
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'article_id': instance.articleId,
      'category': instance.category,
      'source_id': instance.sourceId,
      'description': instance.description,
      'content': instance.content,
      'title': instance.title,
      'image': instance.image,
      'link': instance.link,
      'likes': instance.likes,
      'saved': instance.saved,
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
