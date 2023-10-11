//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LocationV1 {
  /// Returns a new [LocationV1] instance.
  LocationV1({
    required this.id,
    required this.name,
    this.maxCapacity,
    this.timezone,
  });

  int id;

  String name;

  /// Maximum capacity of a location
  int? maxCapacity;

  ///  IANA timezone designations
  String? timezone;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocationV1 &&
     other.id == id &&
     other.name == name &&
     other.maxCapacity == maxCapacity &&
     other.timezone == timezone;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (maxCapacity == null ? 0 : maxCapacity!.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode);

  @override
  String toString() => 'LocationV1[id=$id, name=$name, maxCapacity=$maxCapacity, timezone=$timezone]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'name'] = name;
    if (maxCapacity != null) {
      _json[r'max_capacity'] = maxCapacity;
    }
    if (timezone != null) {
      _json[r'timezone'] = timezone;
    }
    return _json;
  }

  /// Returns a new [LocationV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocationV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocationV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocationV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocationV1(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        maxCapacity: mapValueOfType<int>(json, r'max_capacity'),
        timezone: mapValueOfType<String>(json, r'timezone'),
      );
    }
    return null;
  }

  static List<LocationV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocationV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocationV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocationV1> mapFromJson(dynamic json) {
    final map = <String, LocationV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocationV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocationV1-objects as value to a dart map
  static Map<String, List<LocationV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocationV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocationV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
  };
}

