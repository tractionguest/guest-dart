//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InviteUpdateParams {
  /// Returns a new [InviteUpdateParams] instance.
  InviteUpdateParams({
    this.mobileNumber,
    this.userId,
    this.onPremise,
    this.notificationTriggers = const [],
    this.firstName,
    this.emailTemplateId,
    this.customFields = const [],
    this.hostIds = const [],
    this.title,
    this.startDate,
    this.lastName,
    this.endDate,
    this.email,
    this.company,
    this.groupVisitId,
  });

  String mobileNumber;

  /// Used for transfering ownership of an `Invite` to another member of the Account
  int userId;

  bool onPremise;

  List<NotificationTriggerCreateParams> notificationTriggers;

  String firstName;

  int emailTemplateId;

  List<CustomField> customFields;

  List<int> hostIds;

  String title;

  /// 
  DateTime startDate;

  String lastName;

  DateTime endDate;

  String email;

  String company;

  int groupVisitId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteUpdateParams &&
     other.mobileNumber == mobileNumber &&
     other.userId == userId &&
     other.onPremise == onPremise &&
     other.notificationTriggers == notificationTriggers &&
     other.firstName == firstName &&
     other.emailTemplateId == emailTemplateId &&
     other.customFields == customFields &&
     other.hostIds == hostIds &&
     other.title == title &&
     other.startDate == startDate &&
     other.lastName == lastName &&
     other.endDate == endDate &&
     other.email == email &&
     other.company == company &&
     other.groupVisitId == groupVisitId;

  @override
  int get hashCode =>
    (mobileNumber == null ? 0 : mobileNumber.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (onPremise == null ? 0 : onPremise.hashCode) +
    (notificationTriggers == null ? 0 : notificationTriggers.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (emailTemplateId == null ? 0 : emailTemplateId.hashCode) +
    (customFields == null ? 0 : customFields.hashCode) +
    (hostIds == null ? 0 : hostIds.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (startDate == null ? 0 : startDate.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (endDate == null ? 0 : endDate.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (groupVisitId == null ? 0 : groupVisitId.hashCode);

  @override
  String toString() => 'InviteUpdateParams[mobileNumber=$mobileNumber, userId=$userId, onPremise=$onPremise, notificationTriggers=$notificationTriggers, firstName=$firstName, emailTemplateId=$emailTemplateId, customFields=$customFields, hostIds=$hostIds, title=$title, startDate=$startDate, lastName=$lastName, endDate=$endDate, email=$email, company=$company, groupVisitId=$groupVisitId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (mobileNumber != null) {
      json[r'mobile_number'] = mobileNumber;
    }
    if (userId != null) {
      json[r'user_id'] = userId;
    }
    if (onPremise != null) {
      json[r'on_premise'] = onPremise;
    }
    if (notificationTriggers != null) {
      json[r'notification_triggers'] = notificationTriggers;
    }
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (emailTemplateId != null) {
      json[r'email_template_id'] = emailTemplateId;
    }
    if (customFields != null) {
      json[r'custom_fields'] = customFields;
    }
    if (hostIds != null) {
      json[r'host_ids'] = hostIds;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (startDate != null) {
      json[r'start_date'] = startDate.toUtc().toIso8601String();
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (endDate != null) {
      json[r'end_date'] = endDate.toUtc().toIso8601String();
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (company != null) {
      json[r'company'] = company;
    }
    if (groupVisitId != null) {
      json[r'group_visit_id'] = groupVisitId;
    }
    return json;
  }

  /// Returns a new [InviteUpdateParams] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InviteUpdateParams fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InviteUpdateParams(
        mobileNumber: json[r'mobile_number'],
        userId: json[r'user_id'],
        onPremise: json[r'on_premise'],
        notificationTriggers: NotificationTriggerCreateParams.listFromJson(json[r'notification_triggers']),
        firstName: json[r'first_name'],
        emailTemplateId: json[r'email_template_id'],
        customFields: CustomField.listFromJson(json[r'custom_fields']),
        hostIds: json[r'host_ids'] == null
          ? null
          : (json[r'host_ids'] as List).cast<int>(),
        title: json[r'title'],
        startDate: json[r'start_date'] == null
          ? null
          : DateTime.parse(json[r'start_date']),
        lastName: json[r'last_name'],
        endDate: json[r'end_date'] == null
          ? null
          : DateTime.parse(json[r'end_date']),
        email: json[r'email'],
        company: json[r'company'],
        groupVisitId: json[r'group_visit_id'],
    );

  static List<InviteUpdateParams> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InviteUpdateParams>[]
      : json.map((v) => InviteUpdateParams.fromJson(v)).toList(growable: true == growable);

  static Map<String, InviteUpdateParams> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InviteUpdateParams>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InviteUpdateParams.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InviteUpdateParams-objects as value to a dart map
  static Map<String, List<InviteUpdateParams>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InviteUpdateParams>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InviteUpdateParams.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

