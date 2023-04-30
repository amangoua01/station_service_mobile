import 'package:station_service_mobile/tools/utils/functions.dart';

typedef Json = Map<String, dynamic>;

extension CustomDateTime on DateTime? {
  String get toFrenchDate =>
      (this != null) ? Functions.getStringDate(this) : "";
  String get toFrenchDateTime =>
      (this != null) ? Functions.getStringDate(this, withTime: true) : "";

  String? get toDateTimeString =>
      (this != null) ? this!.toIso8601String() : null;
}

extension StringExt on String? {
  String get value => this ?? "";
  DateTime? get toDateTime => DateTime.tryParse(toString());
}

extension DoubleExt on double? {
  double get value => this ?? 0;
}
