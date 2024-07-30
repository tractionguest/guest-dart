//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CapacityForecastV1 {
  /// Returns a new [CapacityForecastV1] instance.
  CapacityForecastV1({
    this.invitesByHour = const [],
  });

  List<CapacityByHourResponseV1> invitesByHour;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CapacityForecastV1 &&
     other.invitesByHour == invitesByHour;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (invitesByHour.hashCode);

  @override
  String toString() => 'CapacityForecastV1[invitesByHour=$invitesByHour]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'invites_by_hour'] = invitesByHour;
    return _json;
  }

  /// Returns a new [CapacityForecastV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CapacityForecastV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CapacityForecastV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CapacityForecastV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CapacityForecastV1(
        invitesByHour: CapacityByHourResponseV1.listFromJson(json[r'invites_by_hour']) ?? const [],
      );
    }
    return null;
  }

  static List<CapacityForecastV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CapacityForecastV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CapacityForecastV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CapacityForecastV1> mapFromJson(dynamic json) {
    final map = <String, CapacityForecastV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CapacityForecastV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CapacityForecastV1-objects as value to a dart map
  static Map<String, List<CapacityForecastV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CapacityForecastV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CapacityForecastV1.listFromJson(entry.value, growable: growable,);
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

