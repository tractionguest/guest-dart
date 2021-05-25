//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Visitor {
  /// Returns a new [Visitor] instance.
  Visitor({
    this.id,
    this.active,
    this.company,
    this.createdVia,
    this.email,
    this.firstName,
    this.lastName,
    this.mobile,
    this.note,
    this.profilePicContentType,
    this.profilePicFileName,
    this.profilePicFileSize,
    this.profilePicUpdatedAt,
    this.watchlistLevel,
    this.createdAt,
    this.updatedAt,
  });

  /// UUID
  String id;

  bool active;

  String company;

  String createdVia;

  String email;

  String firstName;

  String lastName;

  String mobile;

  String note;

  String profilePicContentType;

  String profilePicFileName;

  String profilePicFileSize;

  String profilePicUpdatedAt;

  String watchlistLevel;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Visitor &&
     other.id == id &&
     other.active == active &&
     other.company == company &&
     other.createdVia == createdVia &&
     other.email == email &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.mobile == mobile &&
     other.note == note &&
     other.profilePicContentType == profilePicContentType &&
     other.profilePicFileName == profilePicFileName &&
     other.profilePicFileSize == profilePicFileSize &&
     other.profilePicUpdatedAt == profilePicUpdatedAt &&
     other.watchlistLevel == watchlistLevel &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (active == null ? 0 : active.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (createdVia == null ? 0 : createdVia.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (mobile == null ? 0 : mobile.hashCode) +
    (note == null ? 0 : note.hashCode) +
    (profilePicContentType == null ? 0 : profilePicContentType.hashCode) +
    (profilePicFileName == null ? 0 : profilePicFileName.hashCode) +
    (profilePicFileSize == null ? 0 : profilePicFileSize.hashCode) +
    (profilePicUpdatedAt == null ? 0 : profilePicUpdatedAt.hashCode) +
    (watchlistLevel == null ? 0 : watchlistLevel.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'Visitor[id=$id, active=$active, company=$company, createdVia=$createdVia, email=$email, firstName=$firstName, lastName=$lastName, mobile=$mobile, note=$note, profilePicContentType=$profilePicContentType, profilePicFileName=$profilePicFileName, profilePicFileSize=$profilePicFileSize, profilePicUpdatedAt=$profilePicUpdatedAt, watchlistLevel=$watchlistLevel, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (active != null) {
      json[r'active'] = active;
    }
    if (company != null) {
      json[r'company'] = company;
    }
    if (createdVia != null) {
      json[r'created_via'] = createdVia;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (mobile != null) {
      json[r'mobile'] = mobile;
    }
    if (note != null) {
      json[r'note'] = note;
    }
    if (profilePicContentType != null) {
      json[r'profile_pic_content_type'] = profilePicContentType;
    }
    if (profilePicFileName != null) {
      json[r'profile_pic_file_name'] = profilePicFileName;
    }
    if (profilePicFileSize != null) {
      json[r'profile_pic_file_size'] = profilePicFileSize;
    }
    if (profilePicUpdatedAt != null) {
      json[r'profile_pic_updated_at'] = profilePicUpdatedAt;
    }
    if (watchlistLevel != null) {
      json[r'watchlist_level'] = watchlistLevel;
    }
    if (createdAt != null) {
      json[r'created_at'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updated_at'] = updatedAt.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [Visitor] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Visitor fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Visitor(
        id: json[r'id'],
        active: json[r'active'],
        company: json[r'company'],
        createdVia: json[r'created_via'],
        email: json[r'email'],
        firstName: json[r'first_name'],
        lastName: json[r'last_name'],
        mobile: json[r'mobile'],
        note: json[r'note'],
        profilePicContentType: json[r'profile_pic_content_type'],
        profilePicFileName: json[r'profile_pic_file_name'],
        profilePicFileSize: json[r'profile_pic_file_size'],
        profilePicUpdatedAt: json[r'profile_pic_updated_at'],
        watchlistLevel: json[r'watchlist_level'],
        createdAt: json[r'created_at'] == null
          ? null
          : DateTime.parse(json[r'created_at']),
        updatedAt: json[r'updated_at'] == null
          ? null
          : DateTime.parse(json[r'updated_at']),
    );

  static List<Visitor> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Visitor>[]
      : json.map((v) => Visitor.fromJson(v)).toList(growable: true == growable);

  static Map<String, Visitor> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Visitor>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Visitor.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Visitor-objects as value to a dart map
  static Map<String, List<Visitor>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Visitor>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Visitor.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

