//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CapacityByHourResponse {
  /// Returns a new [CapacityByHourResponse] instance.
  CapacityByHourResponse({
    this.rangeStart,
    this.rangeEnd,
    this.expectedVisitors,
  });

  DateTime rangeStart;

  DateTime rangeEnd;

  int expectedVisitors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CapacityByHourResponse &&
     other.rangeStart == rangeStart &&
     other.rangeEnd == rangeEnd &&
     other.expectedVisitors == expectedVisitors;

  @override
  int get hashCode =>
    (rangeStart == null ? 0 : rangeStart.hashCode) +
    (rangeEnd == null ? 0 : rangeEnd.hashCode) +
    (expectedVisitors == null ? 0 : expectedVisitors.hashCode);

  @override
  String toString() => 'CapacityByHourResponse[rangeStart=$rangeStart, rangeEnd=$rangeEnd, expectedVisitors=$expectedVisitors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (rangeStart != null) {
      json[r'range_start'] = rangeStart.toUtc().toIso8601String();
    }
    if (rangeEnd != null) {
      json[r'range_end'] = rangeEnd.toUtc().toIso8601String();
    }
    if (expectedVisitors != null) {
      json[r'expected_visitors'] = expectedVisitors;
    }
    return json;
  }

  /// Returns a new [CapacityByHourResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CapacityByHourResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CapacityByHourResponse(
        rangeStart: json[r'range_start'] == null
          ? null
          : DateTime.parse(json[r'range_start']),
        rangeEnd: json[r'range_end'] == null
          ? null
          : DateTime.parse(json[r'range_end']),
        expectedVisitors: json[r'expected_visitors'],
    );

  static List<CapacityByHourResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CapacityByHourResponse>[]
      : json.map((v) => CapacityByHourResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, CapacityByHourResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CapacityByHourResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CapacityByHourResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CapacityByHourResponse-objects as value to a dart map
  static Map<String, List<CapacityByHourResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CapacityByHourResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CapacityByHourResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

