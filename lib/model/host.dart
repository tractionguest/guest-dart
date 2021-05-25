//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Host {
  /// Returns a new [Host] instance.
  Host({
    @required this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.profilePicUrl,
    this.department,
    this.mobileNumber,
  });

  int id;

  String email;

  String firstName;

  String lastName;

  String profilePicUrl;

  /// 
  String department;

  String mobileNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Host &&
     other.id == id &&
     other.email == email &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.profilePicUrl == profilePicUrl &&
     other.department == department &&
     other.mobileNumber == mobileNumber;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (profilePicUrl == null ? 0 : profilePicUrl.hashCode) +
    (department == null ? 0 : department.hashCode) +
    (mobileNumber == null ? 0 : mobileNumber.hashCode);

  @override
  String toString() => 'Host[id=$id, email=$email, firstName=$firstName, lastName=$lastName, profilePicUrl=$profilePicUrl, department=$department, mobileNumber=$mobileNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (email != null) {
      json[r'email'] = email;
    }
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (profilePicUrl != null) {
      json[r'profile_pic_url'] = profilePicUrl;
    }
    if (department != null) {
      json[r'department'] = department;
    }
    if (mobileNumber != null) {
      json[r'mobile_number'] = mobileNumber;
    }
    return json;
  }

  /// Returns a new [Host] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Host fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Host(
        id: json[r'id'],
        email: json[r'email'],
        firstName: json[r'first_name'],
        lastName: json[r'last_name'],
        profilePicUrl: json[r'profile_pic_url'],
        department: json[r'department'],
        mobileNumber: json[r'mobile_number'],
    );

  static List<Host> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Host>[]
      : json.map((v) => Host.fromJson(v)).toList(growable: true == growable);

  static Map<String, Host> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Host>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Host.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Host-objects as value to a dart map
  static Map<String, List<Host>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Host>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Host.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

