//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InviteUpdateParamsV1 {
  /// Returns a new [InviteUpdateParamsV1] instance.
  InviteUpdateParamsV1({
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
    this.licensePlate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileNumber;

  /// Used for transfering ownership of an `Invite` to another member of the Account
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? onPremise;

  List<NotificationTriggerCreateParamsV1> notificationTriggers;

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
  int? emailTemplateId;

  List<CustomFieldV1> customFields;

  List<int> hostIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? company;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? groupVisitId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licensePlate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteUpdateParamsV1 &&
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
     other.groupVisitId == groupVisitId &&
     other.licensePlate == licensePlate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mobileNumber == null ? 0 : mobileNumber!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (onPremise == null ? 0 : onPremise!.hashCode) +
    (notificationTriggers.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (emailTemplateId == null ? 0 : emailTemplateId!.hashCode) +
    (customFields.hashCode) +
    (hostIds.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (groupVisitId == null ? 0 : groupVisitId!.hashCode) +
    (licensePlate == null ? 0 : licensePlate!.hashCode);

  @override
  String toString() => 'InviteUpdateParamsV1[mobileNumber=$mobileNumber, userId=$userId, onPremise=$onPremise, notificationTriggers=$notificationTriggers, firstName=$firstName, emailTemplateId=$emailTemplateId, customFields=$customFields, hostIds=$hostIds, title=$title, startDate=$startDate, lastName=$lastName, endDate=$endDate, email=$email, company=$company, groupVisitId=$groupVisitId, licensePlate=$licensePlate]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (mobileNumber != null) {
      _json[r'mobile_number'] = mobileNumber;
    }
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (onPremise != null) {
      _json[r'on_premise'] = onPremise;
    }
      _json[r'notification_triggers'] = notificationTriggers;
    if (firstName != null) {
      _json[r'first_name'] = firstName;
    }
    if (emailTemplateId != null) {
      _json[r'email_template_id'] = emailTemplateId;
    }
      _json[r'custom_fields'] = customFields;
      _json[r'host_ids'] = hostIds;
    if (title != null) {
      _json[r'title'] = title;
    }
    if (startDate != null) {
      _json[r'start_date'] = startDate!.toUtc().toIso8601String();
    }
    if (lastName != null) {
      _json[r'last_name'] = lastName;
    }
    if (endDate != null) {
      _json[r'end_date'] = endDate!.toUtc().toIso8601String();
    }
    if (email != null) {
      _json[r'email'] = email;
    }
    if (company != null) {
      _json[r'company'] = company;
    }
    if (groupVisitId != null) {
      _json[r'group_visit_id'] = groupVisitId;
    }
    if (licensePlate != null) {
      _json[r'license_plate'] = licensePlate;
    }
    return _json;
  }

  /// Returns a new [InviteUpdateParamsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InviteUpdateParamsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InviteUpdateParamsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InviteUpdateParamsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InviteUpdateParamsV1(
        mobileNumber: mapValueOfType<String>(json, r'mobile_number'),
        userId: mapValueOfType<int>(json, r'user_id'),
        onPremise: mapValueOfType<bool>(json, r'on_premise'),
        notificationTriggers: NotificationTriggerCreateParamsV1.listFromJson(json[r'notification_triggers']) ?? const [],
        firstName: mapValueOfType<String>(json, r'first_name'),
        emailTemplateId: mapValueOfType<int>(json, r'email_template_id'),
        customFields: CustomFieldV1.listFromJson(json[r'custom_fields']) ?? const [],
        hostIds: json[r'host_ids'] is List
            ? (json[r'host_ids'] as List).cast<int>()
            : const [],
        title: mapValueOfType<String>(json, r'title'),
        startDate: mapDateTime(json, r'start_date', ''),
        lastName: mapValueOfType<String>(json, r'last_name'),
        endDate: mapDateTime(json, r'end_date', ''),
        email: mapValueOfType<String>(json, r'email'),
        company: mapValueOfType<String>(json, r'company'),
        groupVisitId: mapValueOfType<int>(json, r'group_visit_id'),
        licensePlate: mapValueOfType<String>(json, r'license_plate'),
      );
    }
    return null;
  }

  static List<InviteUpdateParamsV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InviteUpdateParamsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InviteUpdateParamsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InviteUpdateParamsV1> mapFromJson(dynamic json) {
    final map = <String, InviteUpdateParamsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteUpdateParamsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InviteUpdateParamsV1-objects as value to a dart map
  static Map<String, List<InviteUpdateParamsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InviteUpdateParamsV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteUpdateParamsV1.listFromJson(entry.value, growable: growable,);
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

