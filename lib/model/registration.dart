//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Registration {
  /// Returns a new [Registration] instance.
  Registration({
    @required this.id,
    this.visitor,
    this.invite,
    this.photoUrl,
    this.company,
    this.email,
    this.name,
    @required this.createdAt,
    this.signin,
  });

  /// Registration unique identifier
  String id;

  Visitor visitor;

  Invite invite;

  /// URL of the uploaded photo
  String photoUrl;

  /// Company's name
  String company;

  /// E-mail
  String email;

  /// Guest's name
  String name;

  /// Datetime when registration was created
  DateTime createdAt;

  Signin signin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Registration &&
     other.id == id &&
     other.visitor == visitor &&
     other.invite == invite &&
     other.photoUrl == photoUrl &&
     other.company == company &&
     other.email == email &&
     other.name == name &&
     other.createdAt == createdAt &&
     other.signin == signin;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (visitor == null ? 0 : visitor.hashCode) +
    (invite == null ? 0 : invite.hashCode) +
    (photoUrl == null ? 0 : photoUrl.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (signin == null ? 0 : signin.hashCode);

  @override
  String toString() => 'Registration[id=$id, visitor=$visitor, invite=$invite, photoUrl=$photoUrl, company=$company, email=$email, name=$name, createdAt=$createdAt, signin=$signin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (visitor != null) {
      json[r'visitor'] = visitor;
    }
    if (invite != null) {
      json[r'invite'] = invite;
    }
    if (photoUrl != null) {
      json[r'photo_url'] = photoUrl;
    }
    if (company != null) {
      json[r'company'] = company;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'created_at'] = createdAt.toUtc().toIso8601String();
    if (signin != null) {
      json[r'signin'] = signin;
    }
    return json;
  }

  /// Returns a new [Registration] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Registration fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Registration(
        id: json[r'id'],
        visitor: Visitor.fromJson(json[r'visitor']),
        invite: Invite.fromJson(json[r'invite']),
        photoUrl: json[r'photo_url'],
        company: json[r'company'],
        email: json[r'email'],
        name: json[r'name'],
        createdAt: json[r'created_at'] == null
          ? null
          : DateTime.parse(json[r'created_at']),
        signin: Signin.fromJson(json[r'signin']),
    );

  static List<Registration> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Registration>[]
      : json.map((v) => Registration.fromJson(v)).toList(growable: true == growable);

  static Map<String, Registration> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Registration>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Registration.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Registration-objects as value to a dart map
  static Map<String, List<Registration>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Registration>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Registration.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

