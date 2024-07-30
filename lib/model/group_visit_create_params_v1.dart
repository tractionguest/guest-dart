//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupVisitCreateParamsV1 {
  /// Returns a new [GroupVisitCreateParamsV1] instance.
  GroupVisitCreateParamsV1({
    required this.name,
    required this.startTime,
    required this.endTime,
    required this.locationId,
    this.registrationLimit,
    this.manualRegistrationApproval,
    this.publicRegistrationEnabled,
    this.hostIds = const [],
  });

  String name;

  String startTime;

  String endTime;

  int locationId;

  int? registrationLimit;

  bool? manualRegistrationApproval;

  bool? publicRegistrationEnabled;

  List<int> hostIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupVisitCreateParamsV1 &&
     other.name == name &&
     other.startTime == startTime &&
     other.endTime == endTime &&
     other.locationId == locationId &&
     other.registrationLimit == registrationLimit &&
     other.manualRegistrationApproval == manualRegistrationApproval &&
     other.publicRegistrationEnabled == publicRegistrationEnabled &&
     other.hostIds == hostIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (startTime.hashCode) +
    (endTime.hashCode) +
    (locationId.hashCode) +
    (registrationLimit == null ? 0 : registrationLimit!.hashCode) +
    (manualRegistrationApproval == null ? 0 : manualRegistrationApproval!.hashCode) +
    (publicRegistrationEnabled == null ? 0 : publicRegistrationEnabled!.hashCode) +
    (hostIds.hashCode);

  @override
  String toString() => 'GroupVisitCreateParamsV1[name=$name, startTime=$startTime, endTime=$endTime, locationId=$locationId, registrationLimit=$registrationLimit, manualRegistrationApproval=$manualRegistrationApproval, publicRegistrationEnabled=$publicRegistrationEnabled, hostIds=$hostIds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'name'] = name;
      _json[r'start_time'] = startTime;
      _json[r'end_time'] = endTime;
      _json[r'location_id'] = locationId;
    if (registrationLimit != null) {
      _json[r'registration_limit'] = registrationLimit;
    }
    if (manualRegistrationApproval != null) {
      _json[r'manual_registration_approval'] = manualRegistrationApproval;
    }
    if (publicRegistrationEnabled != null) {
      _json[r'public_registration_enabled'] = publicRegistrationEnabled;
    }
      _json[r'host_ids'] = hostIds;
    return _json;
  }

  /// Returns a new [GroupVisitCreateParamsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupVisitCreateParamsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupVisitCreateParamsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupVisitCreateParamsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupVisitCreateParamsV1(
        name: mapValueOfType<String>(json, r'name')!,
        startTime: mapValueOfType<String>(json, r'start_time')!,
        endTime: mapValueOfType<String>(json, r'end_time')!,
        locationId: mapValueOfType<int>(json, r'location_id')!,
        registrationLimit: mapValueOfType<int>(json, r'registration_limit'),
        manualRegistrationApproval: mapValueOfType<bool>(json, r'manual_registration_approval'),
        publicRegistrationEnabled: mapValueOfType<bool>(json, r'public_registration_enabled'),
        hostIds: json[r'host_ids'] is List
            ? (json[r'host_ids'] as List).cast<int>()
            : const [],
      );
    }
    return null;
  }

  static List<GroupVisitCreateParamsV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupVisitCreateParamsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupVisitCreateParamsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupVisitCreateParamsV1> mapFromJson(dynamic json) {
    final map = <String, GroupVisitCreateParamsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupVisitCreateParamsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupVisitCreateParamsV1-objects as value to a dart map
  static Map<String, List<GroupVisitCreateParamsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupVisitCreateParamsV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupVisitCreateParamsV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'start_time',
    'end_time',
    'location_id',
  };
}

