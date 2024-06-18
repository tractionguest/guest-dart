//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParkingLotAvailableStallsV1 {
  /// Returns a new [ParkingLotAvailableStallsV1] instance.
  ParkingLotAvailableStallsV1({
    required this.parkingStallId,
    required this.stallCount,
    this.range,
    this.openStalls = const [],
  });

  int parkingStallId;

  /// The number of stalls of type in the parking lot.
  int stallCount;

  /// The starting number of the stall range.
  String? range;

  /// An array of the open stall numbers.
  List<int> openStalls;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParkingLotAvailableStallsV1 &&
     other.parkingStallId == parkingStallId &&
     other.stallCount == stallCount &&
     other.range == range &&
     other.openStalls == openStalls;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (parkingStallId.hashCode) +
    (stallCount.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (openStalls.hashCode);

  @override
  String toString() => 'ParkingLotAvailableStallsV1[parkingStallId=$parkingStallId, stallCount=$stallCount, range=$range, openStalls=$openStalls]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'parking_stall_id'] = parkingStallId;
      _json[r'stall_count'] = stallCount;
    if (range != null) {
      _json[r'range'] = range;
    }
      _json[r'open_stalls'] = openStalls;
    return _json;
  }

  /// Returns a new [ParkingLotAvailableStallsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParkingLotAvailableStallsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParkingLotAvailableStallsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParkingLotAvailableStallsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParkingLotAvailableStallsV1(
        parkingStallId: mapValueOfType<int>(json, r'parking_stall_id')!,
        stallCount: mapValueOfType<int>(json, r'stall_count')!,
        range: mapValueOfType<String>(json, r'range'),
        openStalls: json[r'open_stalls'] is List
            ? (json[r'open_stalls'] as List).cast<int>()
            : const [],
      );
    }
    return null;
  }

  static List<ParkingLotAvailableStallsV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParkingLotAvailableStallsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParkingLotAvailableStallsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParkingLotAvailableStallsV1> mapFromJson(dynamic json) {
    final map = <String, ParkingLotAvailableStallsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParkingLotAvailableStallsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParkingLotAvailableStallsV1-objects as value to a dart map
  static Map<String, List<ParkingLotAvailableStallsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParkingLotAvailableStallsV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParkingLotAvailableStallsV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'parking_stall_id',
    'stall_count',
    'open_stalls',
  };
}

