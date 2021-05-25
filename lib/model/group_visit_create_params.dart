//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupVisitCreateParams {
  /// Returns a new [GroupVisitCreateParams] instance.
  GroupVisitCreateParams({
    @required this.name,
    @required this.startTime,
    @required this.endTime,
    @required this.locationId,
    this.registrationLimit,
    this.manualRegistrationApproval,
    this.publicRegistrationEnabled,
    this.hostIds = const [],
  });

  String name;

  String startTime;

  String endTime;

  int locationId;

  int registrationLimit;

  bool manualRegistrationApproval;

  bool publicRegistrationEnabled;

  List<int> hostIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupVisitCreateParams &&
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
    (name == null ? 0 : name.hashCode) +
    (startTime == null ? 0 : startTime.hashCode) +
    (endTime == null ? 0 : endTime.hashCode) +
    (locationId == null ? 0 : locationId.hashCode) +
    (registrationLimit == null ? 0 : registrationLimit.hashCode) +
    (manualRegistrationApproval == null ? 0 : manualRegistrationApproval.hashCode) +
    (publicRegistrationEnabled == null ? 0 : publicRegistrationEnabled.hashCode) +
    (hostIds == null ? 0 : hostIds.hashCode);

  @override
  String toString() => 'GroupVisitCreateParams[name=$name, startTime=$startTime, endTime=$endTime, locationId=$locationId, registrationLimit=$registrationLimit, manualRegistrationApproval=$manualRegistrationApproval, publicRegistrationEnabled=$publicRegistrationEnabled, hostIds=$hostIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
      json[r'start_time'] = startTime;
      json[r'end_time'] = endTime;
      json[r'location_id'] = locationId;
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
    return json;
  }

  /// Returns a new [GroupVisitCreateParams] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GroupVisitCreateParams fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GroupVisitCreateParams(
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
    );

  static List<GroupVisitCreateParams> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GroupVisitCreateParams>[]
      : json.map((v) => GroupVisitCreateParams.fromJson(v)).toList(growable: true == growable);

  static Map<String, GroupVisitCreateParams> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GroupVisitCreateParams>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = GroupVisitCreateParams.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of GroupVisitCreateParams-objects as value to a dart map
  static Map<String, List<GroupVisitCreateParams>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GroupVisitCreateParams>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = GroupVisitCreateParams.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

