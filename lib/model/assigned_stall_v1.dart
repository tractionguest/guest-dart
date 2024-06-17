//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssignedStallV1 {
  /// Returns a new [AssignedStallV1] instance.
  AssignedStallV1({
    required this.id,
    required this.parkingStallId,
    required this.parkingLotName,
    required this.parkingLotId,
    required this.stallNumber,
    required this.stallType,
    this.range,
    this.rangePrefix,
    this.rangePostfix,
  });

  int id;

  /// The id of the assigned parking stall.
  int parkingStallId;

  /// The name of the assigned parking lot.
  String parkingLotName;

  /// The id of the assigned parking lot.
  String parkingLotId;

  /// The number of the assigned parking stall.
  int stallNumber;

  /// The type name of the assigned parking stall.
  String stallType;

  /// The starting number of the stall range.
  String? range;

  /// The prefix of the stall range. i.e. \"A\", \"B\", \"C\", etc...
  String? rangePrefix;

  /// The postfix of the stall range. i.e. \"A\", \"B\", \"C\", etc...
  String? rangePostfix;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssignedStallV1 &&
     other.id == id &&
     other.parkingStallId == parkingStallId &&
     other.parkingLotName == parkingLotName &&
     other.parkingLotId == parkingLotId &&
     other.stallNumber == stallNumber &&
     other.stallType == stallType &&
     other.range == range &&
     other.rangePrefix == rangePrefix &&
     other.rangePostfix == rangePostfix;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (parkingStallId.hashCode) +
    (parkingLotName.hashCode) +
    (parkingLotId.hashCode) +
    (stallNumber.hashCode) +
    (stallType.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (rangePrefix == null ? 0 : rangePrefix!.hashCode) +
    (rangePostfix == null ? 0 : rangePostfix!.hashCode);

  @override
  String toString() => 'AssignedStallV1[id=$id, parkingStallId=$parkingStallId, parkingLotName=$parkingLotName, parkingLotId=$parkingLotId, stallNumber=$stallNumber, stallType=$stallType, range=$range, rangePrefix=$rangePrefix, rangePostfix=$rangePostfix]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'parking_stall_id'] = parkingStallId;
      _json[r'parking_lot_name'] = parkingLotName;
      _json[r'parking_lot_id'] = parkingLotId;
      _json[r'stall_number'] = stallNumber;
      _json[r'stall_type'] = stallType;
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

  /// Returns a new [AssignedStallV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssignedStallV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssignedStallV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssignedStallV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssignedStallV1(
        id: mapValueOfType<int>(json, r'id')!,
        parkingStallId: mapValueOfType<int>(json, r'parking_stall_id')!,
        parkingLotName: mapValueOfType<String>(json, r'parking_lot_name')!,
        parkingLotId: mapValueOfType<String>(json, r'parking_lot_id')!,
        stallNumber: mapValueOfType<int>(json, r'stall_number')!,
        stallType: mapValueOfType<String>(json, r'stall_type')!,
        range: mapValueOfType<String>(json, r'range'),
        rangePrefix: mapValueOfType<String>(json, r'range_prefix'),
        rangePostfix: mapValueOfType<String>(json, r'range_postfix'),
      );
    }
    return null;
  }

  static List<AssignedStallV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignedStallV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignedStallV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssignedStallV1> mapFromJson(dynamic json) {
    final map = <String, AssignedStallV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssignedStallV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssignedStallV1-objects as value to a dart map
  static Map<String, List<AssignedStallV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssignedStallV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssignedStallV1.listFromJson(entry.value, growable: growable,);
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
    'parking_stall_id',
    'parking_lot_name',
    'parking_lot_id',
    'stall_number',
    'stall_type',
  };
}

