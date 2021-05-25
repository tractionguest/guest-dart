//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class User {
  /// Returns a new [User] instance.
  User({
    @required this.id,
    @required this.mobileAccessEnabled,
    this.permissionGroups = const [],
    @required this.email,
    this.lastName,
    this.firstName,
    @required this.registrationPortalEnabled,
    this.accountUuid,
  });

  int id;

  /// Identifies if user has access to mobile app features.
  bool mobileAccessEnabled;

  List<PermissionGroup> permissionGroups;

  /// 
  String email;

  /// 
  String lastName;

  /// Determines if the registration portal has been enabled for this account
  String firstName;

  /// Determines if the registration portal has been enabled for this account
  bool registrationPortalEnabled;

  String accountUuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
     other.id == id &&
     other.mobileAccessEnabled == mobileAccessEnabled &&
     other.permissionGroups == permissionGroups &&
     other.email == email &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.registrationPortalEnabled == registrationPortalEnabled &&
     other.accountUuid == accountUuid;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (mobileAccessEnabled == null ? 0 : mobileAccessEnabled.hashCode) +
    (permissionGroups == null ? 0 : permissionGroups.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (registrationPortalEnabled == null ? 0 : registrationPortalEnabled.hashCode) +
    (accountUuid == null ? 0 : accountUuid.hashCode);

  @override
  String toString() => 'User[id=$id, mobileAccessEnabled=$mobileAccessEnabled, permissionGroups=$permissionGroups, email=$email, lastName=$lastName, firstName=$firstName, registrationPortalEnabled=$registrationPortalEnabled, accountUuid=$accountUuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'mobile_access_enabled'] = mobileAccessEnabled;
    if (permissionGroups != null) {
      json[r'permission_groups'] = permissionGroups;
    }
      json[r'email'] = email;
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
      json[r'registration_portal_enabled'] = registrationPortalEnabled;
    if (accountUuid != null) {
      json[r'account_uuid'] = accountUuid;
    }
    return json;
  }

  /// Returns a new [User] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static User fromJson(Map<String, dynamic> json) => json == null
    ? null
    : User(
        id: json[r'id'],
        mobileAccessEnabled: json[r'mobile_access_enabled'],
        permissionGroups: PermissionGroup.listFromJson(json[r'permission_groups']),
        email: json[r'email'],
        lastName: json[r'last_name'],
        firstName: json[r'first_name'],
        registrationPortalEnabled: json[r'registration_portal_enabled'],
        accountUuid: json[r'account_uuid'],
    );

  static List<User> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <User>[]
      : json.map((v) => User.fromJson(v)).toList(growable: true == growable);

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    final map = <String, User>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = User.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<User>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = User.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

