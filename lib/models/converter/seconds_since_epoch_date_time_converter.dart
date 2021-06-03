import 'package:json_annotation/json_annotation.dart';

class SecondsSinceEpochDateTimeConverter
    implements JsonConverter<DateTime?, int?> {
  const SecondsSinceEpochDateTimeConverter();

  @override
  DateTime? fromJson(int? json) {
    return json != null
        ? DateTime.fromMillisecondsSinceEpoch(json * 1000)
        : null;
  }

  @override
  int? toJson(DateTime? json) => json?.millisecondsSinceEpoch;
}

class IntToStringConverter implements JsonConverter<String, dynamic> {
  const IntToStringConverter();

  @override
  String fromJson(dynamic json) {
    if (json is int) {
      return json.toString();
    } else {
      return json;
    }
  }

  @override
  dynamic toJson(dynamic json) {
    if (json is int) {
      return json.toString();
    } else {
      return json;
    }
  }
}
