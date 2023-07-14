//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CapacityByHourResponseV1 {
  /// Returns a new [CapacityByHourResponseV1] instance.
  CapacityByHourResponseV1({
    this.rangeStart,
    this.rangeEnd,
    this.expectedVisitors,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? rangeStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? rangeEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expectedVisitors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CapacityByHourResponseV1 &&
     other.rangeStart == rangeStart &&
     other.rangeEnd == rangeEnd &&
     other.expectedVisitors == expectedVisitors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rangeStart == null ? 0 : rangeStart!.hashCode) +
    (rangeEnd == null ? 0 : rangeEnd!.hashCode) +
    (expectedVisitors == null ? 0 : expectedVisitors!.hashCode);

  @override
  String toString() => 'CapacityByHourResponseV1[rangeStart=$rangeStart, rangeEnd=$rangeEnd, expectedVisitors=$expectedVisitors]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (rangeStart != null) {
      _json[r'range_start'] = rangeStart!.toUtc().toIso8601String();
    }
    if (rangeEnd != null) {
      _json[r'range_end'] = rangeEnd!.toUtc().toIso8601String();
    }
    if (expectedVisitors != null) {
      _json[r'expected_visitors'] = expectedVisitors;
    }
    return _json;
  }

  /// Returns a new [CapacityByHourResponseV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CapacityByHourResponseV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CapacityByHourResponseV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CapacityByHourResponseV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CapacityByHourResponseV1(
        rangeStart: mapDateTime(json, r'range_start', ''),
        rangeEnd: mapDateTime(json, r'range_end', ''),
        expectedVisitors: mapValueOfType<int>(json, r'expected_visitors'),
      );
    }
    return null;
  }

  static List<CapacityByHourResponseV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CapacityByHourResponseV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CapacityByHourResponseV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CapacityByHourResponseV1> mapFromJson(dynamic json) {
    final map = <String, CapacityByHourResponseV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CapacityByHourResponseV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CapacityByHourResponseV1-objects as value to a dart map
  static Map<String, List<CapacityByHourResponseV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CapacityByHourResponseV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CapacityByHourResponseV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

