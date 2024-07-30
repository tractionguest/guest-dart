//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParkingLotV1 {
  /// Returns a new [ParkingLotV1] instance.
  ParkingLotV1({
    required this.id,
    required this.name,
    this.userId,
    this.locations = const [],
  });

  int id;

  /// The name of the parking lot.
  String name;

  /// The user id of the user that created the parking lot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  /// The locations that the parking lot has been assigned to.
  List<LocationV1> locations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParkingLotV1 &&
     other.id == id &&
     other.name == name &&
     other.userId == userId &&
     other.locations == locations;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (locations.hashCode);

  @override
  String toString() => 'ParkingLotV1[id=$id, name=$name, userId=$userId, locations=$locations]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'name'] = name;
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
      _json[r'locations'] = locations;
    return _json;
  }

  /// Returns a new [ParkingLotV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParkingLotV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParkingLotV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParkingLotV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParkingLotV1(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        userId: mapValueOfType<int>(json, r'user_id'),
        locations: LocationV1.listFromJson(json[r'locations']) ?? const [],
      );
    }
    return null;
  }

  static List<ParkingLotV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParkingLotV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParkingLotV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParkingLotV1> mapFromJson(dynamic json) {
    final map = <String, ParkingLotV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParkingLotV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParkingLotV1-objects as value to a dart map
  static Map<String, List<ParkingLotV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParkingLotV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParkingLotV1.listFromJson(entry.value, growable: growable,);
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

