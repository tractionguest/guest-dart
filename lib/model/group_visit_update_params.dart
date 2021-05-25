//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupVisitUpdateParams {
  /// Returns a new [GroupVisitUpdateParams] instance.
  GroupVisitUpdateParams({
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

  String name;

  String startTime;

  String endTime;

  int locationId;

  int registrationLimit;

  bool manualRegistrationApproval;

  bool publicRegistrationEnabled;

  List<int> hostIds;

  List<int> inviteIds;

  bool refreshRegistrationUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupVisitUpdateParams &&
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
    (name == null ? 0 : name.hashCode) +
    (startTime == null ? 0 : startTime.hashCode) +
    (endTime == null ? 0 : endTime.hashCode) +
    (locationId == null ? 0 : locationId.hashCode) +
    (registrationLimit == null ? 0 : registrationLimit.hashCode) +
    (manualRegistrationApproval == null ? 0 : manualRegistrationApproval.hashCode) +
    (publicRegistrationEnabled == null ? 0 : publicRegistrationEnabled.hashCode) +
    (hostIds == null ? 0 : hostIds.hashCode) +
    (inviteIds == null ? 0 : inviteIds.hashCode) +
    (refreshRegistrationUrl == null ? 0 : refreshRegistrationUrl.hashCode);

  @override
  String toString() => 'GroupVisitUpdateParams[name=$name, startTime=$startTime, endTime=$endTime, locationId=$locationId, registrationLimit=$registrationLimit, manualRegistrationApproval=$manualRegistrationApproval, publicRegistrationEnabled=$publicRegistrationEnabled, hostIds=$hostIds, inviteIds=$inviteIds, refreshRegistrationUrl=$refreshRegistrationUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (startTime != null) {
      json[r'start_time'] = startTime;
    }
    if (endTime != null) {
      json[r'end_time'] = endTime;
    }
    if (locationId != null) {
      json[r'location_id'] = locationId;
    }
    if (registrationLimit != null) {
      json[r'registration_limit'] = registrationLimit;
    }
    if (manualRegistrationApproval != null) {
      json[r'manual_registration_approval'] = manualRegistrationApproval;
    }
    if (publicRegistrationEnabled != null) {
      json[r'public_registration_enabled'] = publicRegistrationEnabled;
    }
    if (hostIds != null) {
      json[r'host_ids'] = hostIds;
    }
    if (inviteIds != null) {
      json[r'invite_ids'] = inviteIds;
    }
    if (refreshRegistrationUrl != null) {
      json[r'refresh_registration_url'] = refreshRegistrationUrl;
    }
    return json;
  }

  /// Returns a new [GroupVisitUpdateParams] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GroupVisitUpdateParams fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GroupVisitUpdateParams(
        name: json[r'name'],
        startTime: json[r'start_time'],
        endTime: json[r'end_time'],
        locationId: json[r'location_id'],
        registrationLimit: json[r'registration_limit'],
        manualRegistrationApproval: json[r'manual_registration_approval'],
        publicRegistrationEnabled: json[r'public_registration_enabled'],
        hostIds: json[r'host_ids'] == null
          ? null
          : (json[r'host_ids'] as List).cast<int>(),
        inviteIds: json[r'invite_ids'] == null
          ? null
          : (json[r'invite_ids'] as List).cast<int>(),
        refreshRegistrationUrl: json[r'refresh_registration_url'],
    );

  static List<GroupVisitUpdateParams> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GroupVisitUpdateParams>[]
      : json.map((v) => GroupVisitUpdateParams.fromJson(v)).toList(growable: true == growable);

  static Map<String, GroupVisitUpdateParams> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GroupVisitUpdateParams>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = GroupVisitUpdateParams.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of GroupVisitUpdateParams-objects as value to a dart map
  static Map<String, List<GroupVisitUpdateParams>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GroupVisitUpdateParams>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = GroupVisitUpdateParams.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

