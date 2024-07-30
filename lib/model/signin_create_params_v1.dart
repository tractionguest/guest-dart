//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SigninCreateParamsV1 {
  /// Returns a new [SigninCreateParamsV1] instance.
  SigninCreateParamsV1({
    this.registrationId,
    this.email,
    this.company,
    this.lastName,
    this.firstName,
    this.smsMessage,
    this.sendNotifications,
    this.locationId,
    this.hostIds = const [],
    this.hostEmailTemplateId,
    this.guestEmailTemplateId,
  });

  /// UUID of a Registration
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registrationId;

  /// E-mail, ignored if `registration_id` is included
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Company name, ignored if `registration_id` is included
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? company;

  /// Last name, ignored if `registration_id` is included
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  /// First name, ignored if `registration_id` is included
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? smsMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? sendNotifications;

  /// ID of the Location where the Signin happened, ignored if `registration_id` is included
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? locationId;

  /// Array of Host ids, ignored if `registration_id` is included
  List<int> hostIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hostEmailTemplateId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? guestEmailTemplateId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigninCreateParamsV1 &&
     other.registrationId == registrationId &&
     other.email == email &&
     other.company == company &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.smsMessage == smsMessage &&
     other.sendNotifications == sendNotifications &&
     other.locationId == locationId &&
     other.hostIds == hostIds &&
     other.hostEmailTemplateId == hostEmailTemplateId &&
     other.guestEmailTemplateId == guestEmailTemplateId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (registrationId == null ? 0 : registrationId!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (smsMessage == null ? 0 : smsMessage!.hashCode) +
    (sendNotifications == null ? 0 : sendNotifications!.hashCode) +
    (locationId == null ? 0 : locationId!.hashCode) +
    (hostIds.hashCode) +
    (hostEmailTemplateId == null ? 0 : hostEmailTemplateId!.hashCode) +
    (guestEmailTemplateId == null ? 0 : guestEmailTemplateId!.hashCode);

  @override
  String toString() => 'SigninCreateParamsV1[registrationId=$registrationId, email=$email, company=$company, lastName=$lastName, firstName=$firstName, smsMessage=$smsMessage, sendNotifications=$sendNotifications, locationId=$locationId, hostIds=$hostIds, hostEmailTemplateId=$hostEmailTemplateId, guestEmailTemplateId=$guestEmailTemplateId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (registrationId != null) {
      _json[r'registration_id'] = registrationId;
    }
    if (email != null) {
      _json[r'email'] = email;
    }
    if (company != null) {
      _json[r'company'] = company;
    }
    if (lastName != null) {
      _json[r'last_name'] = lastName;
    }
    if (firstName != null) {
      _json[r'first_name'] = firstName;
    }
    if (smsMessage != null) {
      _json[r'sms_message'] = smsMessage;
    }
    if (sendNotifications != null) {
      _json[r'send_notifications'] = sendNotifications;
    }
    if (locationId != null) {
      _json[r'location_id'] = locationId;
    }
      _json[r'host_ids'] = hostIds;
    if (hostEmailTemplateId != null) {
      _json[r'host_email_template_id'] = hostEmailTemplateId;
    }
    if (guestEmailTemplateId != null) {
      _json[r'guest_email_template_id'] = guestEmailTemplateId;
    }
    return _json;
  }

  /// Returns a new [SigninCreateParamsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SigninCreateParamsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SigninCreateParamsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SigninCreateParamsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SigninCreateParamsV1(
        registrationId: mapValueOfType<String>(json, r'registration_id'),
        email: mapValueOfType<String>(json, r'email'),
        company: mapValueOfType<String>(json, r'company'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        smsMessage: mapValueOfType<String>(json, r'sms_message'),
        sendNotifications: mapValueOfType<bool>(json, r'send_notifications'),
        locationId: mapValueOfType<int>(json, r'location_id'),
        hostIds: json[r'host_ids'] is List
            ? (json[r'host_ids'] as List).cast<int>()
            : const [],
        hostEmailTemplateId: mapValueOfType<int>(json, r'host_email_template_id'),
        guestEmailTemplateId: mapValueOfType<int>(json, r'guest_email_template_id'),
      );
    }
    return null;
  }

  static List<SigninCreateParamsV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SigninCreateParamsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SigninCreateParamsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SigninCreateParamsV1> mapFromJson(dynamic json) {
    final map = <String, SigninCreateParamsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SigninCreateParamsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SigninCreateParamsV1-objects as value to a dart map
  static Map<String, List<SigninCreateParamsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SigninCreateParamsV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SigninCreateParamsV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

