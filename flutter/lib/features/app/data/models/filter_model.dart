import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_news/features/app/data/enums/sortby.dart';

part 'filter_model.freezed.dart';

part 'filter_model.g.dart';

DateTime? _dateTimeFromJson(String value) => DateTime.tryParse(value);

String? _dateTimeToJson(DateTime? date) => date?.toIso8601String();


@freezed
class FilterModel with _$FilterModel {
  const factory FilterModel({
    @Default(SortBy.date) @JsonKey(name: 'sort_by', fromJson: SortBy.fromJson,toJson: SortBy.toJson) SortBy sortBy,
    @Default(SortByType.ascending) @JsonKey(name: 'sort_type', fromJson: SortByType.fromJson,toJson: SortByType.toJson) SortByType sortByType,
    @JsonKey(name: 'published_from', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? publishedFrom,
    @JsonKey(name: 'published_to', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? publishedTO,
    List<String>? categories,
    String? query,
  }) = _FilterModelModel;

  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);
}
