part of guest_sdk.api;

class GroupVisit {
  
  int id = null;
  
  Location location = null;
  
  List<Host> hosts = [];
  
  String name = null;
  
  String startTime = null;
  
  String endTime = null;
  
  String createdAt = null;
  
  String updatedAt = null;
  
  int registrationLimit = null;
  
  String registrationUrl = null;
  
  int invitesCount = null;
  
  int unconfirmedRegistrationsCount = null;
  
  bool manualRegistrationApproval = null;
  
  bool publicRegistrationEnabled = null;
  GroupVisit();

  @override
  String toString() {
    return 'GroupVisit[id=$id, location=$location, hosts=$hosts, name=$name, startTime=$startTime, endTime=$endTime, createdAt=$createdAt, updatedAt=$updatedAt, registrationLimit=$registrationLimit, registrationUrl=$registrationUrl, invitesCount=$invitesCount, unconfirmedRegistrationsCount=$unconfirmedRegistrationsCount, manualRegistrationApproval=$manualRegistrationApproval, publicRegistrationEnabled=$publicRegistrationEnabled, ]';
  }

  GroupVisit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['location'] == null) {
      location = null;
    } else {
      location = new Location.fromJson(json['location']);
    }
    if (json['hosts'] == null) {
      hosts = null;
    } else {
      hosts = Host.listFromJson(json['hosts']);
    }
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
    if (json['created_at'] == null) {
      createdAt = null;
    } else {
          createdAt = json['created_at'];
    }
    if (json['updated_at'] == null) {
      updatedAt = null;
    } else {
          updatedAt = json['updated_at'];
    }
    if (json['registration_limit'] == null) {
      registrationLimit = null;
    } else {
          registrationLimit = json['registration_limit'];
    }
    if (json['registration_url'] == null) {
      registrationUrl = null;
    } else {
          registrationUrl = json['registration_url'];
    }
    if (json['invites_count'] == null) {
      invitesCount = null;
    } else {
          invitesCount = json['invites_count'];
    }
    if (json['unconfirmed_registrations_count'] == null) {
      unconfirmedRegistrationsCount = null;
    } else {
          unconfirmedRegistrationsCount = json['unconfirmed_registrations_count'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (location != null)
      json['location'] = location;
    if (hosts != null)
      json['hosts'] = hosts;
    if (name != null)
      json['name'] = name;
    if (startTime != null)
      json['start_time'] = startTime;
    if (endTime != null)
      json['end_time'] = endTime;
    if (createdAt != null)
      json['created_at'] = createdAt;
    if (updatedAt != null)
      json['updated_at'] = updatedAt;
      json['registration_limit'] = registrationLimit;
      json['registration_url'] = registrationUrl;
    if (invitesCount != null)
      json['invites_count'] = invitesCount;
    if (unconfirmedRegistrationsCount != null)
      json['unconfirmed_registrations_count'] = unconfirmedRegistrationsCount;
    if (manualRegistrationApproval != null)
      json['manual_registration_approval'] = manualRegistrationApproval;
    if (publicRegistrationEnabled != null)
      json['public_registration_enabled'] = publicRegistrationEnabled;
    return json;
  }

  static List<GroupVisit> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupVisit>() : json.map((value) => new GroupVisit.fromJson(value)).toList();
  }

  static Map<String, GroupVisit> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, GroupVisit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new GroupVisit.fromJson(value));
    }
    return map;
  }
}

