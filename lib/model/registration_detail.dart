//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegistrationDetail {
  /// Returns a new [RegistrationDetail] instance.
  RegistrationDetail({
    @required this.id,
    this.visitor,
    this.invite,
    this.guestResponses = const [],
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

  /// Response given by the guest
  List<GuestResponse> guestResponses;

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
  bool operator ==(Object other) => identical(this, other) || other is RegistrationDetail &&
     other.id == id &&
     other.visitor == visitor &&
     other.invite == invite &&
     other.guestResponses == guestResponses &&
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
    (guestResponses == null ? 0 : guestResponses.hashCode) +
    (photoUrl == null ? 0 : photoUrl.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (signin == null ? 0 : signin.hashCode);

  @override
  String toString() => 'RegistrationDetail[id=$id, visitor=$visitor, invite=$invite, guestResponses=$guestResponses, photoUrl=$photoUrl, company=$company, email=$email, name=$name, createdAt=$createdAt, signin=$signin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (visitor != null) {
      json[r'visitor'] = visitor;
    }
    if (invite != null) {
      json[r'invite'] = invite;
    }
    if (guestResponses != null) {
      json[r'guest_responses'] = guestResponses;
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

  /// Returns a new [RegistrationDetail] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RegistrationDetail fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RegistrationDetail(
        id: json[r'id'],
        visitor: Visitor.fromJson(json[r'visitor']),
        invite: Invite.fromJson(json[r'invite']),
        guestResponses: GuestResponse.listFromJson(json[r'guest_responses']),
        photoUrl: json[r'photo_url'],
        company: json[r'company'],
        email: json[r'email'],
        name: json[r'name'],
        createdAt: json[r'created_at'] == null
          ? null
          : DateTime.parse(json[r'created_at']),
        signin: Signin.fromJson(json[r'signin']),
    );

  static List<RegistrationDetail> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RegistrationDetail>[]
      : json.map((v) => RegistrationDetail.fromJson(v)).toList(growable: true == growable);

  static Map<String, RegistrationDetail> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RegistrationDetail>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RegistrationDetail.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RegistrationDetail-objects as value to a dart map
  static Map<String, List<RegistrationDetail>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RegistrationDetail>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RegistrationDetail.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

