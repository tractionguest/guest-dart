//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InviteCreateParamsV1ParkingStall {
  /// Returns a new [InviteCreateParamsV1ParkingStall] instance.
  InviteCreateParamsV1ParkingStall({
    this.stallNumber,
    this.parkingLotId,
    this.parkingStallId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stallNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parkingLotId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parkingStallId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteCreateParamsV1ParkingStall &&
     other.stallNumber == stallNumber &&
     other.parkingLotId == parkingLotId &&
     other.parkingStallId == parkingStallId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stallNumber == null ? 0 : stallNumber!.hashCode) +
    (parkingLotId == null ? 0 : parkingLotId!.hashCode) +
    (parkingStallId == null ? 0 : parkingStallId!.hashCode);

  @override
  String toString() => 'InviteCreateParamsV1ParkingStall[stallNumber=$stallNumber, parkingLotId=$parkingLotId, parkingStallId=$parkingStallId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (stallNumber != null) {
      _json[r'stall_number'] = stallNumber;
    }
    if (parkingLotId != null) {
      _json[r'parking_lot_id'] = parkingLotId;
    }
    if (parkingStallId != null) {
      _json[r'parking_stall_id'] = parkingStallId;
    }
    return _json;
  }

  /// Returns a new [InviteCreateParamsV1ParkingStall] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InviteCreateParamsV1ParkingStall? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InviteCreateParamsV1ParkingStall[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InviteCreateParamsV1ParkingStall[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InviteCreateParamsV1ParkingStall(
        stallNumber: mapValueOfType<int>(json, r'stall_number'),
        parkingLotId: mapValueOfType<int>(json, r'parking_lot_id'),
        parkingStallId: mapValueOfType<int>(json, r'parking_stall_id'),
      );
    }
    return null;
  }

  static List<InviteCreateParamsV1ParkingStall>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InviteCreateParamsV1ParkingStall>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InviteCreateParamsV1ParkingStall.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InviteCreateParamsV1ParkingStall> mapFromJson(dynamic json) {
    final map = <String, InviteCreateParamsV1ParkingStall>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteCreateParamsV1ParkingStall.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InviteCreateParamsV1ParkingStall-objects as value to a dart map
  static Map<String, List<InviteCreateParamsV1ParkingStall>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InviteCreateParamsV1ParkingStall>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteCreateParamsV1ParkingStall.listFromJson(entry.value, growable: growable,);
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

