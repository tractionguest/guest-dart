//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InviteCreateParams {
  /// Returns a new [InviteCreateParams] instance.
  InviteCreateParams({
    this.mobileNumber,
    this.notificationTriggers = const [],
    @required this.firstName,
    this.emailTemplateId,
    this.customFields = const [],
    this.hostIds = const [],
    this.watchlistColour,
    this.title,
    this.startDate,
    @required this.lastName,
    this.endDate,
    @required this.email,
    this.company,
    this.groupVisitId,
  });

  String mobileNumber;

  List<NotificationTriggerCreateParams> notificationTriggers;

  String firstName;

  int emailTemplateId;

  List<CustomField> customFields;

  List<int> hostIds;

  InviteCreateParamsWatchlistColourEnum watchlistColour;

  String title;

  /// The `start_date` is required for invitations to lobbies
  DateTime startDate;

  String lastName;

  DateTime endDate;

  String email;

  String company;

  int groupVisitId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteCreateParams &&
     other.mobileNumber == mobileNumber &&
     other.notificationTriggers == notificationTriggers &&
     other.firstName == firstName &&
     other.emailTemplateId == emailTemplateId &&
     other.customFields == customFields &&
     other.hostIds == hostIds &&
     other.watchlistColour == watchlistColour &&
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
    (notificationTriggers == null ? 0 : notificationTriggers.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (emailTemplateId == null ? 0 : emailTemplateId.hashCode) +
    (customFields == null ? 0 : customFields.hashCode) +
    (hostIds == null ? 0 : hostIds.hashCode) +
    (watchlistColour == null ? 0 : watchlistColour.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (startDate == null ? 0 : startDate.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (endDate == null ? 0 : endDate.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (groupVisitId == null ? 0 : groupVisitId.hashCode);

  @override
  String toString() => 'InviteCreateParams[mobileNumber=$mobileNumber, notificationTriggers=$notificationTriggers, firstName=$firstName, emailTemplateId=$emailTemplateId, customFields=$customFields, hostIds=$hostIds, watchlistColour=$watchlistColour, title=$title, startDate=$startDate, lastName=$lastName, endDate=$endDate, email=$email, company=$company, groupVisitId=$groupVisitId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (mobileNumber != null) {
      json[r'mobile_number'] = mobileNumber;
    }
    if (notificationTriggers != null) {
      json[r'notification_triggers'] = notificationTriggers;
    }
      json[r'first_name'] = firstName;
    if (emailTemplateId != null) {
      json[r'email_template_id'] = emailTemplateId;
    }
    if (customFields != null) {
      json[r'custom_fields'] = customFields;
    }
    if (hostIds != null) {
      json[r'host_ids'] = hostIds;
    }
    if (watchlistColour != null) {
      json[r'watchlist_colour'] = watchlistColour;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (startDate != null) {
      json[r'start_date'] = startDate.toUtc().toIso8601String();
    }
      json[r'last_name'] = lastName;
    if (endDate != null) {
      json[r'end_date'] = endDate.toUtc().toIso8601String();
    }
      json[r'email'] = email;
    if (company != null) {
      json[r'company'] = company;
    }
    if (groupVisitId != null) {
      json[r'group_visit_id'] = groupVisitId;
    }
    return json;
  }

  /// Returns a new [InviteCreateParams] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InviteCreateParams fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InviteCreateParams(
        mobileNumber: json[r'mobile_number'],
        notificationTriggers: NotificationTriggerCreateParams.listFromJson(json[r'notification_triggers']),
        firstName: json[r'first_name'],
        emailTemplateId: json[r'email_template_id'],
        customFields: CustomField.listFromJson(json[r'custom_fields']),
        hostIds: json[r'host_ids'] == null
          ? null
          : (json[r'host_ids'] as List).cast<int>(),
        watchlistColour: InviteCreateParamsWatchlistColourEnum.fromJson(json[r'watchlist_colour']),
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

  static List<InviteCreateParams> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InviteCreateParams>[]
      : json.map((v) => InviteCreateParams.fromJson(v)).toList(growable: true == growable);

  static Map<String, InviteCreateParams> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InviteCreateParams>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InviteCreateParams.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InviteCreateParams-objects as value to a dart map
  static Map<String, List<InviteCreateParams>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InviteCreateParams>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InviteCreateParams.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class InviteCreateParamsWatchlistColourEnum {
  /// Instantiate a new enum with the provided [value].
  const InviteCreateParamsWatchlistColourEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RED = InviteCreateParamsWatchlistColourEnum._(r'RED');
  static const GREEN = InviteCreateParamsWatchlistColourEnum._(r'GREEN');
  static const YELLOW = InviteCreateParamsWatchlistColourEnum._(r'YELLOW');
  static const ORANGE = InviteCreateParamsWatchlistColourEnum._(r'ORANGE');

  /// List of all possible values in this [enum][InviteCreateParamsWatchlistColourEnum].
  static const values = <InviteCreateParamsWatchlistColourEnum>[
    RED,
    GREEN,
    YELLOW,
    ORANGE,
  ];

  static InviteCreateParamsWatchlistColourEnum fromJson(dynamic value) =>
    InviteCreateParamsWatchlistColourEnumTypeTransformer().decode(value);

  static List<InviteCreateParamsWatchlistColourEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InviteCreateParamsWatchlistColourEnum>[]
      : json
          .map((value) => InviteCreateParamsWatchlistColourEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InviteCreateParamsWatchlistColourEnum] to String,
/// and [decode] dynamic data back to [InviteCreateParamsWatchlistColourEnum].
class InviteCreateParamsWatchlistColourEnumTypeTransformer {
  const InviteCreateParamsWatchlistColourEnumTypeTransformer._();

  factory InviteCreateParamsWatchlistColourEnumTypeTransformer() => _instance ??= InviteCreateParamsWatchlistColourEnumTypeTransformer._();

  String encode(InviteCreateParamsWatchlistColourEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InviteCreateParamsWatchlistColourEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InviteCreateParamsWatchlistColourEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RED': return InviteCreateParamsWatchlistColourEnum.RED;
      case r'GREEN': return InviteCreateParamsWatchlistColourEnum.GREEN;
      case r'YELLOW': return InviteCreateParamsWatchlistColourEnum.YELLOW;
      case r'ORANGE': return InviteCreateParamsWatchlistColourEnum.ORANGE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InviteCreateParamsWatchlistColourEnumTypeTransformer] instance.
  static InviteCreateParamsWatchlistColourEnumTypeTransformer _instance;
}

