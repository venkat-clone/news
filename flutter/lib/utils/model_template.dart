import 'package:freezed_annotation/freezed_annotation.dart';

class ModelTemplate {
  static DateTime? dateTimeFromJson(String value) => DateTime.tryParse(value);

  static String? dateTimeToJson(DateTime? date) => date?.toIso8601String();


}



class DateJsonKey extends JsonKey{
  const DateJsonKey({
    Object? defaultValue,
    bool? disallowNullValue,
    bool? ignore,
    bool? includeFromJson,
    bool? includeIfNull,
    bool? includeToJson,
    String? name,
    Object? Function(Map, String)? readValue,
    bool? required,
    Enum? unknownEnumValue,
    Function? fromJson,
    Function? toJson,
  }) : super(
            defaultValue: defaultValue,
            disallowNullValue: disallowNullValue,
            ignore: ignore,
            includeFromJson: includeFromJson,
            includeIfNull: includeIfNull,
            includeToJson: includeToJson,
            name: name,
            readValue: readValue,
            required: required,
            unknownEnumValue: unknownEnumValue,
            fromJson: fromJson??ModelTemplate.dateTimeFromJson,
            toJson: toJson??ModelTemplate.dateTimeToJson);
}