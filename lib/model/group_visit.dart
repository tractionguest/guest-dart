//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupVisit {
  /// Returns a new [GroupVisit] instance.
  GroupVisit({
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

  int id;

  Location location;

  List<Host> hosts;

  String name;

  String startTime;

  String endTime;

  String createdAt;

  String updatedAt;

  int registrationLimit;

  String registrationUrl;

  int invitesCount;

  int unconfirmedRegistrationsCount;

  bool manualRegistrationApproval;

  bool publicRegistrationEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupVisit &&
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
    (id == null ? 0 : id.hashCode) +
    (location == null ? 0 : location.hashCode) +
    (hosts == null ? 0 : hosts.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (startTime == null ? 0 : startTime.hashCode) +
    (endTime == null ? 0 : endTime.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (registrationLimit == null ? 0 : registrationLimit.hashCode) +
    (registrationUrl == null ? 0 : registrationUrl.hashCode) +
    (invitesCount == null ? 0 : invitesCount.hashCode) +
    (unconfirmedRegistrationsCount == null ? 0 : unconfirmedRegistrationsCount.hashCode) +
    (manualRegistrationApproval == null ? 0 : manualRegistrationApproval.hashCode) +
    (publicRegistrationEnabled == null ? 0 : publicRegistrationEnabled.hashCode);

  @override
  String toString() => 'GroupVisit[id=$id, location=$location, hosts=$hosts, name=$name, startTime=$startTime, endTime=$endTime, createdAt=$createdAt, updatedAt=$updatedAt, registrationLimit=$registrationLimit, registrationUrl=$registrationUrl, invitesCount=$invitesCount, unconfirmedRegistrationsCount=$unconfirmedRegistrationsCount, manualRegistrationApproval=$manualRegistrationApproval, publicRegistrationEnabled=$publicRegistrationEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    if (hosts != null) {
      json[r'hosts'] = hosts;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (startTime != null) {
      json[r'start_time'] = startTime;
    }
    if (endTime != null) {
      json[r'end_time'] = endTime;
    }
    if (createdAt != null) {
      json[r'created_at'] = createdAt;
    }
    if (updatedAt != null) {
      json[r'updated_at'] = updatedAt;
    }
    if (registrationLimit != null) {
      json[r'registration_limit'] = registrationLimit;
    }
    if (registrationUrl != null) {
      json[r'registration_url'] = registrationUrl;
    }
    if (invitesCount != null) {
      json[r'invites_count'] = invitesCount;
    }
    if (unconfirmedRegistrationsCount != null) {
      json[r'unconfirmed_registrations_count'] = unconfirmedRegistrationsCount;
    }
    if (manualRegistrationApproval != null) {
      json[r'manual_registration_approval'] = manualRegistrationApproval;
    }
    if (publicRegistrationEnabled != null) {
      json[r'public_registration_enabled'] = publicRegistrationEnabled;
    }
    return json;
  }

  /// Returns a new [GroupVisit] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GroupVisit fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GroupVisit(
        id: json[r'id'],
        location: Location.fromJson(json[r'location']),
        hosts: Host.listFromJson(json[r'hosts']),
        name: json[r'name'],
        startTime: json[r'start_time'],
        endTime: json[r'end_time'],
        createdAt: json[r'created_at'],
        updatedAt: json[r'updated_at'],
        registrationLimit: json[r'registration_limit'],
        registrationUrl: json[r'registration_url'],
        invitesCount: json[r'invites_count'],
        unconfirmedRegistrationsCount: json[r'unconfirmed_registrations_count'],
        manualRegistrationApproval: json[r'manual_registration_approval'],
        publicRegistrationEnabled: json[r'public_registration_enabled'],
    );

  static List<GroupVisit> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GroupVisit>[]
      : json.map((v) => GroupVisit.fromJson(v)).toList(growable: true == growable);

  static Map<String, GroupVisit> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GroupVisit>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = GroupVisit.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of GroupVisit-objects as value to a dart map
  static Map<String, List<GroupVisit>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GroupVisit>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = GroupVisit.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

