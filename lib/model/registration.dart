part of guest_sdk.api;

class Registration {
  /* Registration unique identifier */
  String id = null;
  
  Visitor visitor = null;
  
  Invite invite = null;
  /* URL of the uploaded photo */
  String photoUrl = null;
  /* Company's name */
  String company = null;
  /* E-mail */
  String email = null;
  /* Guest's name */
  String name = null;
  /* Datetime when registration was created */
  DateTime createdAt = null;
  /* An enum describing the state of the `Registration` which can have one of the following: not_started, started, completed, rejected, signed_in signed_out */
  String status = null;
  //enum statusEnum {  not_started,  started,  completed,  rejected,  signed_in,  signed_out,  };{
  Registration();

  @override
  String toString() {
    return 'Registration[id=$id, visitor=$visitor, invite=$invite, photoUrl=$photoUrl, company=$company, email=$email, name=$name, createdAt=$createdAt, status=$status, ]';
  }

  Registration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['visitor'] == null) {
      visitor = null;
    } else {
      visitor = new Visitor.fromJson(json['visitor']);
    }
    if (json['invite'] == null) {
      invite = null;
    } else {
      invite = new Invite.fromJson(json['invite']);
    }
    if (json['photo_url'] == null) {
      photoUrl = null;
    } else {
          photoUrl = json['photo_url'];
    }
    if (json['company'] == null) {
      company = null;
    } else {
          company = json['company'];
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['created_at'] == null) {
      createdAt = null;
    } else {
      createdAt = DateTime.parse(json['created_at']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (visitor != null)
      json['visitor'] = visitor;
    if (invite != null)
      json['invite'] = invite;
      json['photo_url'] = photoUrl;
      json['company'] = company;
      json['email'] = email;
      json['name'] = name;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<Registration> listFromJson(List<dynamic> json) {
    return json == null ? new List<Registration>() : json.map((value) => new Registration.fromJson(value)).toList();
  }

  static Map<String, Registration> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Registration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Registration.fromJson(value));
    }
    return map;
  }
}

