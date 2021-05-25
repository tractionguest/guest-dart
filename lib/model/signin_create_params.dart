//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SigninCreateParams {
  /// Returns a new [SigninCreateParams] instance.
  SigninCreateParams({
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
  String registrationId;

  /// E-mail, ignored if `registration_id` is included
  String email;

  /// Company name, ignored if `registration_id` is included
  String company;

  /// Last name, ignored if `registration_id` is included
  String lastName;

  /// First name, ignored if `registration_id` is included
  String firstName;

  String smsMessage;

  bool sendNotifications;

  /// ID of the Location where the Signin happened, ignored if `registration_id` is included
  int locationId;

  /// Array of Host ids, ignored if `registration_id` is included
  List<int> hostIds;

  int hostEmailTemplateId;

  int guestEmailTemplateId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigninCreateParams &&
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
    (registrationId == null ? 0 : registrationId.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (smsMessage == null ? 0 : smsMessage.hashCode) +
    (sendNotifications == null ? 0 : sendNotifications.hashCode) +
    (locationId == null ? 0 : locationId.hashCode) +
    (hostIds == null ? 0 : hostIds.hashCode) +
    (hostEmailTemplateId == null ? 0 : hostEmailTemplateId.hashCode) +
    (guestEmailTemplateId == null ? 0 : guestEmailTemplateId.hashCode);

  @override
  String toString() => 'SigninCreateParams[registrationId=$registrationId, email=$email, company=$company, lastName=$lastName, firstName=$firstName, smsMessage=$smsMessage, sendNotifications=$sendNotifications, locationId=$locationId, hostIds=$hostIds, hostEmailTemplateId=$hostEmailTemplateId, guestEmailTemplateId=$guestEmailTemplateId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (registrationId != null) {
      json[r'registration_id'] = registrationId;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (company != null) {
      json[r'company'] = company;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (smsMessage != null) {
      json[r'sms_message'] = smsMessage;
    }
    if (sendNotifications != null) {
      json[r'send_notifications'] = sendNotifications;
    }
    if (locationId != null) {
      json[r'location_id'] = locationId;
    }
    if (hostIds != null) {
      json[r'host_ids'] = hostIds;
    }
    if (hostEmailTemplateId != null) {
      json[r'host_email_template_id'] = hostEmailTemplateId;
    }
    if (guestEmailTemplateId != null) {
      json[r'guest_email_template_id'] = guestEmailTemplateId;
    }
    return json;
  }

  /// Returns a new [SigninCreateParams] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SigninCreateParams fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SigninCreateParams(
        registrationId: json[r'registration_id'],
        email: json[r'email'],
        company: json[r'company'],
        lastName: json[r'last_name'],
        firstName: json[r'first_name'],
        smsMessage: json[r'sms_message'],
        sendNotifications: json[r'send_notifications'],
        locationId: json[r'location_id'],
        hostIds: json[r'host_ids'] == null
          ? null
          : (json[r'host_ids'] as List).cast<int>(),
        hostEmailTemplateId: json[r'host_email_template_id'],
        guestEmailTemplateId: json[r'guest_email_template_id'],
    );

  static List<SigninCreateParams> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SigninCreateParams>[]
      : json.map((v) => SigninCreateParams.fromJson(v)).toList(growable: true == growable);

  static Map<String, SigninCreateParams> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SigninCreateParams>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SigninCreateParams.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SigninCreateParams-objects as value to a dart map
  static Map<String, List<SigninCreateParams>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SigninCreateParams>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SigninCreateParams.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

