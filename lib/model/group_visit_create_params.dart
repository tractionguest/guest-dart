part of guest_sdk.api;

class GroupVisitCreateParams {
  
  String name = null;
  
  String startTime = null;
  
  String endTime = null;
  
  int locationId = null;
  
  int registrationLimit = null;
  
  bool manualRegistrationApproval = null;
  
  bool publicRegistrationEnabled = null;
  
  List<int> hostIds = [];
  GroupVisitCreateParams();

  @override
  String toString() {
    return 'GroupVisitCreateParams[name=$name, startTime=$startTime, endTime=$endTime, locationId=$locationId, registrationLimit=$registrationLimit, manualRegistrationApproval=$manualRegistrationApproval, publicRegistrationEnabled=$publicRegistrationEnabled, hostIds=$hostIds, ]';
  }

  GroupVisitCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['start_time'] == null) {
      startTime = null;
    } else {
          startTime = json['start_time'];
    }
    if (json['end_time'] == null) {
      endTime = null;
    } else {
          endTime = json['end_time'];
    }
    if (json['location_id'] == null) {
      locationId = null;
    } else {
          locationId = json['location_id'];
    }
    if (json['registration_limit'] == null) {
      registrationLimit = null;
    } else {
          registrationLimit = json['registration_limit'];
    }
    if (json['manual_registration_approval'] == null) {
      manualRegistrationApproval = null;
    } else {
          manualRegistrationApproval = json['manual_registration_approval'];
    }
    if (json['public_registration_enabled'] == null) {
      publicRegistrationEnabled = null;
    } else {
          publicRegistrationEnabled = json['public_registration_enabled'];
    }
    if (json['host_ids'] == null) {
      hostIds = null;
    } else {
      hostIds = (json['host_ids'] as List).cast<int>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (startTime != null)
      json['start_time'] = startTime;
    if (endTime != null)
      json['end_time'] = endTime;
    if (locationId != null)
      json['location_id'] = locationId;
      json['registration_limit'] = registrationLimit;
      json['manual_registration_approval'] = manualRegistrationApproval;
      json['public_registration_enabled'] = publicRegistrationEnabled;
    if (hostIds != null)
      json['host_ids'] = hostIds;
    return json;
  }

  static List<GroupVisitCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupVisitCreateParams>() : json.map((value) => new GroupVisitCreateParams.fromJson(value)).toList();
  }

  static Map<String, GroupVisitCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, GroupVisitCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new GroupVisitCreateParams.fromJson(value));
    }
    return map;
  }
}

