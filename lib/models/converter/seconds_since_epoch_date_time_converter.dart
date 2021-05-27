import 'package:json_annotation/json_annotation.dart';

class SecondsSinceEpochDateTimeConverter
    implements JsonConverter<DateTime, int> {
  const SecondsSinceEpochDateTimeConverter();

  @override
  DateTime fromJson(int json) {
    return DateTime.fromMillisecondsSinceEpoch(json * 1000);
  }

  @override
  int toJson(DateTime json) => json.millisecondsSinceEpoch;
}
