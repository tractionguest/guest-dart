//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserV1 {
  /// Returns a new [UserV1] instance.
  UserV1({
    required this.id,
    required this.mobileAccessEnabled,
    this.permissionGroups = const [],
    required this.email,
    this.lastName,
    this.firstName,
    required this.registrationPortalEnabled,
    this.accountUuid,
  });

  int id;

  /// Identifies if user has access to mobile app features.
  bool mobileAccessEnabled;

  List<PermissionGroupV1> permissionGroups;

  /// 
  String email;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  /// Determines if the registration portal has been enabled for this account
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// Determines if the registration portal has been enabled for this account
  bool registrationPortalEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountUuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserV1 &&
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
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (mobileAccessEnabled.hashCode) +
    (permissionGroups.hashCode) +
    (email.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (registrationPortalEnabled.hashCode) +
    (accountUuid == null ? 0 : accountUuid!.hashCode);

  @override
  String toString() => 'UserV1[id=$id, mobileAccessEnabled=$mobileAccessEnabled, permissionGroups=$permissionGroups, email=$email, lastName=$lastName, firstName=$firstName, registrationPortalEnabled=$registrationPortalEnabled, accountUuid=$accountUuid]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'mobile_access_enabled'] = mobileAccessEnabled;
      _json[r'permission_groups'] = permissionGroups;
      _json[r'email'] = email;
    if (lastName != null) {
      _json[r'last_name'] = lastName;
    }
    if (firstName != null) {
      _json[r'first_name'] = firstName;
    }
      _json[r'registration_portal_enabled'] = registrationPortalEnabled;
    if (accountUuid != null) {
      _json[r'account_uuid'] = accountUuid;
    }
    return _json;
  }

  /// Returns a new [UserV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserV1(
        id: mapValueOfType<int>(json, r'id')!,
        mobileAccessEnabled: mapValueOfType<bool>(json, r'mobile_access_enabled')!,
        permissionGroups: PermissionGroupV1.listFromJson(json[r'permission_groups']) ?? const [],
        email: mapValueOfType<String>(json, r'email')!,
        lastName: mapValueOfType<String>(json, r'last_name'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        registrationPortalEnabled: mapValueOfType<bool>(json, r'registration_portal_enabled')!,
        accountUuid: mapValueOfType<String>(json, r'account_uuid'),
      );
    }
    return null;
  }

  static List<UserV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserV1> mapFromJson(dynamic json) {
    final map = <String, UserV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserV1-objects as value to a dart map
  static Map<String, List<UserV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'mobile_access_enabled',
    'email',
    'registration_portal_enabled',
  };
}

