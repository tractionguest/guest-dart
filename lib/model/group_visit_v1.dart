//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupVisitV1 {
  /// Returns a new [GroupVisitV1] instance.
  GroupVisitV1({
    this.id,
    this.location,
    this.hosts = const [],
    this.name,
    this.startTime,
    this.endTime,
    this.createdAt,
    this.updatedAt,
    this.registrationLimit,
    this.registrationUrl,
    this.invitesCount,
    this.unconfirmedRegistrationsCount,
    this.manualRegistrationApproval,
    this.publicRegistrationEnabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocationV1? location;

  List<HostV1> hosts;

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
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  int? registrationLimit;

  String? registrationUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invitesCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unconfirmedRegistrationsCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? manualRegistrationApproval;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publicRegistrationEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupVisitV1 &&
     other.id == id &&
     other.location == location &&
     other.hosts == hosts &&
     other.name == name &&
     other.startTime == startTime &&
     other.endTime == endTime &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.registrationLimit == registrationLimit &&
     other.registrationUrl == registrationUrl &&
     other.invitesCount == invitesCount &&
     other.unconfirmedRegistrationsCount == unconfirmedRegistrationsCount &&
     other.manualRegistrationApproval == manualRegistrationApproval &&
     other.publicRegistrationEnabled == publicRegistrationEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (hosts.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (registrationLimit == null ? 0 : registrationLimit!.hashCode) +
    (registrationUrl == null ? 0 : registrationUrl!.hashCode) +
    (invitesCount == null ? 0 : invitesCount!.hashCode) +
    (unconfirmedRegistrationsCount == null ? 0 : unconfirmedRegistrationsCount!.hashCode) +
    (manualRegistrationApproval == null ? 0 : manualRegistrationApproval!.hashCode) +
    (publicRegistrationEnabled == null ? 0 : publicRegistrationEnabled!.hashCode);

  @override
  String toString() => 'GroupVisitV1[id=$id, location=$location, hosts=$hosts, name=$name, startTime=$startTime, endTime=$endTime, createdAt=$createdAt, updatedAt=$updatedAt, registrationLimit=$registrationLimit, registrationUrl=$registrationUrl, invitesCount=$invitesCount, unconfirmedRegistrationsCount=$unconfirmedRegistrationsCount, manualRegistrationApproval=$manualRegistrationApproval, publicRegistrationEnabled=$publicRegistrationEnabled]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (location != null) {
      _json[r'location'] = location;
    }
      _json[r'hosts'] = hosts;
    if (name != null) {
      _json[r'name'] = name;
    }
    if (startTime != null) {
      _json[r'start_time'] = startTime;
    }
    if (endTime != null) {
      _json[r'end_time'] = endTime;
    }
    if (createdAt != null) {
      _json[r'created_at'] = createdAt;
    }
    if (updatedAt != null) {
      _json[r'updated_at'] = updatedAt;
    }
    if (registrationLimit != null) {
      _json[r'registration_limit'] = registrationLimit;
    }
    if (registrationUrl != null) {
      _json[r'registration_url'] = registrationUrl;
    }
    if (invitesCount != null) {
      _json[r'invites_count'] = invitesCount;
    }
    if (unconfirmedRegistrationsCount != null) {
      _json[r'unconfirmed_registrations_count'] = unconfirmedRegistrationsCount;
    }
    if (manualRegistrationApproval != null) {
      _json[r'manual_registration_approval'] = manualRegistrationApproval;
    }
    if (publicRegistrationEnabled != null) {
      _json[r'public_registration_enabled'] = publicRegistrationEnabled;
    }
    return _json;
  }

  /// Returns a new [GroupVisitV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupVisitV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupVisitV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupVisitV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupVisitV1(
        id: mapValueOfType<int>(json, r'id'),
        location: LocationV1.fromJson(json[r'location']),
        hosts: HostV1.listFromJson(json[r'hosts']) ?? const [],
        name: mapValueOfType<String>(json, r'name'),
        startTime: mapValueOfType<String>(json, r'start_time'),
        endTime: mapValueOfType<String>(json, r'end_time'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
        registrationLimit: mapValueOfType<int>(json, r'registration_limit'),
        registrationUrl: mapValueOfType<String>(json, r'registration_url'),
        invitesCount: mapValueOfType<int>(json, r'invites_count'),
        unconfirmedRegistrationsCount: mapValueOfType<int>(json, r'unconfirmed_registrations_count'),
        manualRegistrationApproval: mapValueOfType<bool>(json, r'manual_registration_approval'),
        publicRegistrationEnabled: mapValueOfType<bool>(json, r'public_registration_enabled'),
      );
    }
    return null;
  }

  static List<GroupVisitV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupVisitV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupVisitV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupVisitV1> mapFromJson(dynamic json) {
    final map = <String, GroupVisitV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupVisitV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupVisitV1-objects as value to a dart map
  static Map<String, List<GroupVisitV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupVisitV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupVisitV1.listFromJson(entry.value, growable: growable,);
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

