//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CapacityV1 {
  /// Returns a new [CapacityV1] instance.
  CapacityV1({
    this.signinsCount,
    this.invitesExpectedNextHour,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? signinsCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invitesExpectedNextHour;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CapacityV1 &&
     other.signinsCount == signinsCount &&
     other.invitesExpectedNextHour == invitesExpectedNextHour;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (signinsCount == null ? 0 : signinsCount!.hashCode) +
    (invitesExpectedNextHour == null ? 0 : invitesExpectedNextHour!.hashCode);

  @override
  String toString() => 'CapacityV1[signinsCount=$signinsCount, invitesExpectedNextHour=$invitesExpectedNextHour]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (signinsCount != null) {
      _json[r'signins_count'] = signinsCount;
    }
    if (invitesExpectedNextHour != null) {
      _json[r'invites_expected_next_hour'] = invitesExpectedNextHour;
    }
    return _json;
  }

  /// Returns a new [CapacityV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CapacityV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CapacityV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CapacityV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CapacityV1(
        signinsCount: mapValueOfType<int>(json, r'signins_count'),
        invitesExpectedNextHour: mapValueOfType<int>(json, r'invites_expected_next_hour'),
      );
    }
    return null;
  }

  static List<CapacityV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CapacityV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CapacityV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CapacityV1> mapFromJson(dynamic json) {
    final map = <String, CapacityV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CapacityV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CapacityV1-objects as value to a dart map
  static Map<String, List<CapacityV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CapacityV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CapacityV1.listFromJson(entry.value, growable: growable,);
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

