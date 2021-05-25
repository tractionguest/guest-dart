//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InviteDetail {
  /// Returns a new [InviteDetail] instance.
  InviteDetail({
    @required this.id,
    this.registration,
    this.mobileNumber,
    this.emailTemplate,
    this.inviteWatchlist,
    this.notificationTriggers = const [],
    this.customFields = const [],
    this.watchlistColour,
    this.location,
    this.hosts = const [],
    this.startDate,
    @required this.lastName,
    @required this.firstName,
    this.endDate,
    @required this.email,
    this.createdAt,
    this.company,
    this.checkedIn,
    this.groupVisit,
  });

  int id;

  Registration registration;

  /// Phone number
  String mobileNumber;

  EmailTemplate emailTemplate;

  InviteWatchlist inviteWatchlist;

  /// List of scheduled notifications for an invite
  List<NotificationTrigger> notificationTriggers;

  List<CustomField> customFields;

  InviteDetailWatchlistColourEnum watchlistColour;

  Location location;

  List<Host> hosts;

  DateTime startDate;

  String lastName;

  String firstName;

  DateTime endDate;

  String email;

  DateTime createdAt;

  String company;

  bool checkedIn;

  GroupVisit groupVisit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteDetail &&
     other.id == id &&
     other.registration == registration &&
     other.mobileNumber == mobileNumber &&
     other.emailTemplate == emailTemplate &&
     other.inviteWatchlist == inviteWatchlist &&
     other.notificationTriggers == notificationTriggers &&
     other.customFields == customFields &&
     other.watchlistColour == watchlistColour &&
     other.location == location &&
     other.hosts == hosts &&
     other.startDate == startDate &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.endDate == endDate &&
     other.email == email &&
     other.createdAt == createdAt &&
     other.company == company &&
     other.checkedIn == checkedIn &&
     other.groupVisit == groupVisit;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (registration == null ? 0 : registration.hashCode) +
    (mobileNumber == null ? 0 : mobileNumber.hashCode) +
    (emailTemplate == null ? 0 : emailTemplate.hashCode) +
    (inviteWatchlist == null ? 0 : inviteWatchlist.hashCode) +
    (notificationTriggers == null ? 0 : notificationTriggers.hashCode) +
    (customFields == null ? 0 : customFields.hashCode) +
    (watchlistColour == null ? 0 : watchlistColour.hashCode) +
    (location == null ? 0 : location.hashCode) +
    (hosts == null ? 0 : hosts.hashCode) +
    (startDate == null ? 0 : startDate.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (endDate == null ? 0 : endDate.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (checkedIn == null ? 0 : checkedIn.hashCode) +
    (groupVisit == null ? 0 : groupVisit.hashCode);

  @override
  String toString() => 'InviteDetail[id=$id, registration=$registration, mobileNumber=$mobileNumber, emailTemplate=$emailTemplate, inviteWatchlist=$inviteWatchlist, notificationTriggers=$notificationTriggers, customFields=$customFields, watchlistColour=$watchlistColour, location=$location, hosts=$hosts, startDate=$startDate, lastName=$lastName, firstName=$firstName, endDate=$endDate, email=$email, createdAt=$createdAt, company=$company, checkedIn=$checkedIn, groupVisit=$groupVisit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (registration != null) {
      json[r'registration'] = registration;
    }
    if (mobileNumber != null) {
      json[r'mobile_number'] = mobileNumber;
    }
    if (emailTemplate != null) {
      json[r'email_template'] = emailTemplate;
    }
    if (inviteWatchlist != null) {
      json[r'invite_watchlist'] = inviteWatchlist;
    }
    if (notificationTriggers != null) {
      json[r'notification_triggers'] = notificationTriggers;
    }
    if (customFields != null) {
      json[r'custom_fields'] = customFields;
    }
    if (watchlistColour != null) {
      json[r'watchlist_colour'] = watchlistColour;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    if (hosts != null) {
      json[r'hosts'] = hosts;
    }
    if (startDate != null) {
      json[r'start_date'] = startDate.toUtc().toIso8601String();
    }
      json[r'last_name'] = lastName;
      json[r'first_name'] = firstName;
    if (endDate != null) {
      json[r'end_date'] = endDate.toUtc().toIso8601String();
    }
      json[r'email'] = email;
    if (createdAt != null) {
      json[r'created_at'] = createdAt.toUtc().toIso8601String();
    }
    if (company != null) {
      json[r'company'] = company;
    }
    if (checkedIn != null) {
      json[r'checked_in'] = checkedIn;
    }
    if (groupVisit != null) {
      json[r'group_visit'] = groupVisit;
    }
    return json;
  }

  /// Returns a new [InviteDetail] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InviteDetail fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InviteDetail(
        id: json[r'id'],
        registration: Registration.fromJson(json[r'registration']),
        mobileNumber: json[r'mobile_number'],
        emailTemplate: EmailTemplate.fromJson(json[r'email_template']),
        inviteWatchlist: InviteWatchlist.fromJson(json[r'invite_watchlist']),
        notificationTriggers: NotificationTrigger.listFromJson(json[r'notification_triggers']),
        customFields: CustomField.listFromJson(json[r'custom_fields']),
        watchlistColour: InviteDetailWatchlistColourEnum.fromJson(json[r'watchlist_colour']),
        location: Location.fromJson(json[r'location']),
        hosts: Host.listFromJson(json[r'hosts']),
        startDate: json[r'start_date'] == null
          ? null
          : DateTime.parse(json[r'start_date']),
        lastName: json[r'last_name'],
        firstName: json[r'first_name'],
        endDate: json[r'end_date'] == null
          ? null
          : DateTime.parse(json[r'end_date']),
        email: json[r'email'],
        createdAt: json[r'created_at'] == null
          ? null
          : DateTime.parse(json[r'created_at']),
        company: json[r'company'],
        checkedIn: json[r'checked_in'],
        groupVisit: GroupVisit.fromJson(json[r'group_visit']),
    );

  static List<InviteDetail> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InviteDetail>[]
      : json.map((v) => InviteDetail.fromJson(v)).toList(growable: true == growable);

  static Map<String, InviteDetail> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InviteDetail>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InviteDetail.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InviteDetail-objects as value to a dart map
  static Map<String, List<InviteDetail>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InviteDetail>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InviteDetail.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class InviteDetailWatchlistColourEnum {
  /// Instantiate a new enum with the provided [value].
  const InviteDetailWatchlistColourEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RED = InviteDetailWatchlistColourEnum._(r'RED');
  static const GREEN = InviteDetailWatchlistColourEnum._(r'GREEN');
  static const YELLOW = InviteDetailWatchlistColourEnum._(r'YELLOW');
  static const ORANGE = InviteDetailWatchlistColourEnum._(r'ORANGE');

  /// List of all possible values in this [enum][InviteDetailWatchlistColourEnum].
  static const values = <InviteDetailWatchlistColourEnum>[
    RED,
    GREEN,
    YELLOW,
    ORANGE,
  ];

  static InviteDetailWatchlistColourEnum fromJson(dynamic value) =>
    InviteDetailWatchlistColourEnumTypeTransformer().decode(value);

  static List<InviteDetailWatchlistColourEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InviteDetailWatchlistColourEnum>[]
      : json
          .map((value) => InviteDetailWatchlistColourEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InviteDetailWatchlistColourEnum] to String,
/// and [decode] dynamic data back to [InviteDetailWatchlistColourEnum].
class InviteDetailWatchlistColourEnumTypeTransformer {
  const InviteDetailWatchlistColourEnumTypeTransformer._();

  factory InviteDetailWatchlistColourEnumTypeTransformer() => _instance ??= InviteDetailWatchlistColourEnumTypeTransformer._();

  String encode(InviteDetailWatchlistColourEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InviteDetailWatchlistColourEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InviteDetailWatchlistColourEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RED': return InviteDetailWatchlistColourEnum.RED;
      case r'GREEN': return InviteDetailWatchlistColourEnum.GREEN;
      case r'YELLOW': return InviteDetailWatchlistColourEnum.YELLOW;
      case r'ORANGE': return InviteDetailWatchlistColourEnum.ORANGE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InviteDetailWatchlistColourEnumTypeTransformer] instance.
  static InviteDetailWatchlistColourEnumTypeTransformer _instance;
}

