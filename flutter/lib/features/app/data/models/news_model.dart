import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../utils/utils.dart';
part 'news_model.freezed.dart';

part 'news_model.g.dart';

@freezed
class NewsModel extends ModelTemplate with _$NewsModel {
  const factory NewsModel({
    int? id,
    @JsonKey(name: 'article_id') required String articleId,
    String? category,
    @JsonKey(name: 'source_id') String? sourceId,
    required String description,
    required String content,
    required String title,
    String? image,
    String? link,
    int? likes,
    @Default(false) bool saved,
    @DateJsonKey() DateTime? publishedAt,
    @DateJsonKey() DateTime? createdAt,
    @DateJsonKey() DateTime? updatedAt,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}
