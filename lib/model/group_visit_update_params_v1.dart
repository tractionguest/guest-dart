//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupVisitUpdateParamsV1 {
  /// Returns a new [GroupVisitUpdateParamsV1] instance.
  GroupVisitUpdateParamsV1({
    this.name,
    this.startTime,
    this.endTime,
    this.locationId,
    this.registrationLimit,
    this.manualRegistrationApproval,
    this.publicRegistrationEnabled,
    this.hostIds = const [],
    this.inviteIds = const [],
    this.refreshRegistrationUrl,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? locationId;

  int? registrationLimit;

  bool? manualRegistrationApproval;

  bool? publicRegistrationEnabled;

  List<int> hostIds;

  List<int> inviteIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? refreshRegistrationUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupVisitUpdateParamsV1 &&
     other.name == name &&
     other.startTime == startTime &&
     other.endTime == endTime &&
     other.locationId == locationId &&
     other.registrationLimit == registrationLimit &&
     other.manualRegistrationApproval == manualRegistrationApproval &&
     other.publicRegistrationEnabled == publicRegistrationEnabled &&
     other.hostIds == hostIds &&
     other.inviteIds == inviteIds &&
     other.refreshRegistrationUrl == refreshRegistrationUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (locationId == null ? 0 : locationId!.hashCode) +
    (registrationLimit == null ? 0 : registrationLimit!.hashCode) +
    (manualRegistrationApproval == null ? 0 : manualRegistrationApproval!.hashCode) +
    (publicRegistrationEnabled == null ? 0 : publicRegistrationEnabled!.hashCode) +
    (hostIds.hashCode) +
    (inviteIds.hashCode) +
    (refreshRegistrationUrl == null ? 0 : refreshRegistrationUrl!.hashCode);

  @override
  String toString() => 'GroupVisitUpdateParamsV1[name=$name, startTime=$startTime, endTime=$endTime, locationId=$locationId, registrationLimit=$registrationLimit, manualRegistrationApproval=$manualRegistrationApproval, publicRegistrationEnabled=$publicRegistrationEnabled, hostIds=$hostIds, inviteIds=$inviteIds, refreshRegistrationUrl=$refreshRegistrationUrl]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (name != null) {
      _json[r'name'] = name;
    }
    if (startTime != null) {
      _json[r'start_time'] = startTime;
    }
    if (endTime != null) {
      _json[r'end_time'] = endTime;
    }
    if (locationId != null) {
      _json[r'location_id'] = locationId;
    }
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
      _json[r'invite_ids'] = inviteIds;
    if (refreshRegistrationUrl != null) {
      _json[r'refresh_registration_url'] = refreshRegistrationUrl;
    }
    return _json;
  }

  /// Returns a new [GroupVisitUpdateParamsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupVisitUpdateParamsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupVisitUpdateParamsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupVisitUpdateParamsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupVisitUpdateParamsV1(
        name: mapValueOfType<String>(json, r'name'),
        startTime: mapValueOfType<String>(json, r'start_time'),
        endTime: mapValueOfType<String>(json, r'end_time'),
        locationId: mapValueOfType<int>(json, r'location_id'),
        registrationLimit: mapValueOfType<int>(json, r'registration_limit'),
        manualRegistrationApproval: mapValueOfType<bool>(json, r'manual_registration_approval'),
        publicRegistrationEnabled: mapValueOfType<bool>(json, r'public_registration_enabled'),
        hostIds: json[r'host_ids'] is List
            ? (json[r'host_ids'] as List).cast<int>()
            : const [],
        inviteIds: json[r'invite_ids'] is List
            ? (json[r'invite_ids'] as List).cast<int>()
            : const [],
        refreshRegistrationUrl: mapValueOfType<bool>(json, r'refresh_registration_url'),
      );
    }
    return null;
  }

  static List<GroupVisitUpdateParamsV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupVisitUpdateParamsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupVisitUpdateParamsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupVisitUpdateParamsV1> mapFromJson(dynamic json) {
    final map = <String, GroupVisitUpdateParamsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupVisitUpdateParamsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupVisitUpdateParamsV1-objects as value to a dart map
  static Map<String, List<GroupVisitUpdateParamsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupVisitUpdateParamsV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupVisitUpdateParamsV1.listFromJson(entry.value, growable: growable,);
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

