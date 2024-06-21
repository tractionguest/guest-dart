//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParkingStallV1 {
  /// Returns a new [ParkingStallV1] instance.
  ParkingStallV1({
    required this.id,
    required this.stallType,
    required this.stallCount,
    this.range,
    this.rangePrefix,
    this.rangePostfix,
  });

  int id;

  /// A string that represents the type of stall. i.e. \"compact\", \"regular\", \"handicap\", etc...
  String stallType;

  /// The number of stalls of type in the parking lot.
  int stallCount;

  /// The starting number of the stall range.
  String? range;

  /// The prefix of the stall range. i.e. \"A\", \"B\", \"C\", etc...
  String? rangePrefix;

  /// The postfix of the stall range. i.e. \"A\", \"B\", \"C\", etc...
  String? rangePostfix;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParkingStallV1 &&
     other.id == id &&
     other.stallType == stallType &&
     other.stallCount == stallCount &&
     other.range == range &&
     other.rangePrefix == rangePrefix &&
     other.rangePostfix == rangePostfix;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (stallType.hashCode) +
    (stallCount.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (rangePrefix == null ? 0 : rangePrefix!.hashCode) +
    (rangePostfix == null ? 0 : rangePostfix!.hashCode);

  @override
  String toString() => 'ParkingStallV1[id=$id, stallType=$stallType, stallCount=$stallCount, range=$range, rangePrefix=$rangePrefix, rangePostfix=$rangePostfix]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'stall_type'] = stallType;
      _json[r'stall_count'] = stallCount;
    if (range != null) {
      _json[r'range'] = range;
    }
    if (rangePrefix != null) {
      _json[r'range_prefix'] = rangePrefix;
    }
    if (rangePostfix != null) {
      _json[r'range_postfix'] = rangePostfix;
    }
    return _json;
  }

  /// Returns a new [ParkingStallV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParkingStallV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParkingStallV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParkingStallV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParkingStallV1(
        id: mapValueOfType<int>(json, r'id')!,
        stallType: mapValueOfType<String>(json, r'stall_type')!,
        stallCount: mapValueOfType<int>(json, r'stall_count')!,
        range: mapValueOfType<String>(json, r'range'),
        rangePrefix: mapValueOfType<String>(json, r'range_prefix'),
        rangePostfix: mapValueOfType<String>(json, r'range_postfix'),
      );
    }
    return null;
  }

  static List<ParkingStallV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParkingStallV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParkingStallV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParkingStallV1> mapFromJson(dynamic json) {
    final map = <String, ParkingStallV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParkingStallV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParkingStallV1-objects as value to a dart map
  static Map<String, List<ParkingStallV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParkingStallV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParkingStallV1.listFromJson(entry.value, growable: growable,);
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
    'stall_type',
    'stall_count',
  };
}

