//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InviteDetailV1 {
  /// Returns a new [InviteDetailV1] instance.
  InviteDetailV1({
    required this.id,
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
    required this.lastName,
    required this.firstName,
    this.endDate,
    required this.email,
    this.createdAt,
    this.company,
    this.checkedIn,
    this.groupVisit,
    this.licensePlate,
    this.invitesParkingLot,
  });

  int id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RegistrationV1? registration;

  /// Phone number
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTemplateV1? emailTemplate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InviteWatchlistV1? inviteWatchlist;

  /// List of scheduled notifications for an invite
  List<NotificationTriggerV1> notificationTriggers;

  List<CustomFieldV1> customFields;

  InviteDetailV1WatchlistColourEnum? watchlistColour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocationV1? location;

  List<HostV1> hosts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startDate;

  String lastName;

  String firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endDate;

  String email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

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
  bool? checkedIn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GroupVisitV1? groupVisit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licensePlate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InviteDetailV1InvitesParkingLot? invitesParkingLot;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteDetailV1 &&
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
     other.groupVisit == groupVisit &&
     other.licensePlate == licensePlate &&
     other.invitesParkingLot == invitesParkingLot;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (registration == null ? 0 : registration!.hashCode) +
    (mobileNumber == null ? 0 : mobileNumber!.hashCode) +
    (emailTemplate == null ? 0 : emailTemplate!.hashCode) +
    (inviteWatchlist == null ? 0 : inviteWatchlist!.hashCode) +
    (notificationTriggers.hashCode) +
    (customFields.hashCode) +
    (watchlistColour == null ? 0 : watchlistColour!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (hosts.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (lastName.hashCode) +
    (firstName.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (email.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (checkedIn == null ? 0 : checkedIn!.hashCode) +
    (groupVisit == null ? 0 : groupVisit!.hashCode) +
    (licensePlate == null ? 0 : licensePlate!.hashCode) +
    (invitesParkingLot == null ? 0 : invitesParkingLot!.hashCode);

  @override
  String toString() => 'InviteDetailV1[id=$id, registration=$registration, mobileNumber=$mobileNumber, emailTemplate=$emailTemplate, inviteWatchlist=$inviteWatchlist, notificationTriggers=$notificationTriggers, customFields=$customFields, watchlistColour=$watchlistColour, location=$location, hosts=$hosts, startDate=$startDate, lastName=$lastName, firstName=$firstName, endDate=$endDate, email=$email, createdAt=$createdAt, company=$company, checkedIn=$checkedIn, groupVisit=$groupVisit, licensePlate=$licensePlate, invitesParkingLot=$invitesParkingLot]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
    if (registration != null) {
      _json[r'registration'] = registration;
    }
    if (mobileNumber != null) {
      _json[r'mobile_number'] = mobileNumber;
    }
    if (emailTemplate != null) {
      _json[r'email_template'] = emailTemplate;
    }
    if (inviteWatchlist != null) {
      _json[r'invite_watchlist'] = inviteWatchlist;
    }
      _json[r'notification_triggers'] = notificationTriggers;
      _json[r'custom_fields'] = customFields;
    if (watchlistColour != null) {
      _json[r'watchlist_colour'] = watchlistColour;
    }
    if (location != null) {
      _json[r'location'] = location;
    }
      _json[r'hosts'] = hosts;
    if (startDate != null) {
      _json[r'start_date'] = startDate!.toUtc().toIso8601String();
    }
      _json[r'last_name'] = lastName;
      _json[r'first_name'] = firstName;
    if (endDate != null) {
      _json[r'end_date'] = endDate!.toUtc().toIso8601String();
    }
      _json[r'email'] = email;
    if (createdAt != null) {
      _json[r'created_at'] = createdAt!.toUtc().toIso8601String();
    }
    if (company != null) {
      _json[r'company'] = company;
    }
    if (checkedIn != null) {
      _json[r'checked_in'] = checkedIn;
    }
    if (groupVisit != null) {
      _json[r'group_visit'] = groupVisit;
    }
    if (licensePlate != null) {
      _json[r'license_plate'] = licensePlate;
    }
    if (invitesParkingLot != null) {
      _json[r'invites_parking_lot'] = invitesParkingLot;
    }
    return _json;
  }

  /// Returns a new [InviteDetailV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InviteDetailV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InviteDetailV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InviteDetailV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InviteDetailV1(
        id: mapValueOfType<int>(json, r'id')!,
        registration: RegistrationV1.fromJson(json[r'registration']),
        mobileNumber: mapValueOfType<String>(json, r'mobile_number'),
        emailTemplate: EmailTemplateV1.fromJson(json[r'email_template']),
        inviteWatchlist: InviteWatchlistV1.fromJson(json[r'invite_watchlist']),
        notificationTriggers: NotificationTriggerV1.listFromJson(json[r'notification_triggers']) ?? const [],
        customFields: CustomFieldV1.listFromJson(json[r'custom_fields']) ?? const [],
        watchlistColour: InviteDetailV1WatchlistColourEnum.fromJson(json[r'watchlist_colour']),
        location: LocationV1.fromJson(json[r'location']),
        hosts: HostV1.listFromJson(json[r'hosts']) ?? const [],
        startDate: mapDateTime(json, r'start_date', ''),
        lastName: mapValueOfType<String>(json, r'last_name')!,
        firstName: mapValueOfType<String>(json, r'first_name')!,
        endDate: mapDateTime(json, r'end_date', ''),
        email: mapValueOfType<String>(json, r'email')!,
        createdAt: mapDateTime(json, r'created_at', ''),
        company: mapValueOfType<String>(json, r'company'),
        checkedIn: mapValueOfType<bool>(json, r'checked_in'),
        groupVisit: GroupVisitV1.fromJson(json[r'group_visit']),
        licensePlate: mapValueOfType<String>(json, r'license_plate'),
        invitesParkingLot: InviteDetailV1InvitesParkingLot.fromJson(json[r'invites_parking_lot']),
      );
    }
    return null;
  }

  static List<InviteDetailV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InviteDetailV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InviteDetailV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InviteDetailV1> mapFromJson(dynamic json) {
    final map = <String, InviteDetailV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteDetailV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InviteDetailV1-objects as value to a dart map
  static Map<String, List<InviteDetailV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InviteDetailV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteDetailV1.listFromJson(entry.value, growable: growable,);
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
    'last_name',
    'first_name',
    'email',
  };
}


class InviteDetailV1WatchlistColourEnum {
  /// Instantiate a new enum with the provided [value].
  const InviteDetailV1WatchlistColourEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RED = InviteDetailV1WatchlistColourEnum._(r'RED');
  static const GREEN = InviteDetailV1WatchlistColourEnum._(r'GREEN');
  static const YELLOW = InviteDetailV1WatchlistColourEnum._(r'YELLOW');
  static const ORANGE = InviteDetailV1WatchlistColourEnum._(r'ORANGE');

  /// List of all possible values in this [enum][InviteDetailV1WatchlistColourEnum].
  static const values = <InviteDetailV1WatchlistColourEnum>[
    RED,
    GREEN,
    YELLOW,
    ORANGE,
  ];

  static InviteDetailV1WatchlistColourEnum? fromJson(dynamic value) => InviteDetailV1WatchlistColourEnumTypeTransformer().decode(value);

  static List<InviteDetailV1WatchlistColourEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InviteDetailV1WatchlistColourEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InviteDetailV1WatchlistColourEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InviteDetailV1WatchlistColourEnum] to String,
/// and [decode] dynamic data back to [InviteDetailV1WatchlistColourEnum].
class InviteDetailV1WatchlistColourEnumTypeTransformer {
  factory InviteDetailV1WatchlistColourEnumTypeTransformer() => _instance ??= const InviteDetailV1WatchlistColourEnumTypeTransformer._();

  const InviteDetailV1WatchlistColourEnumTypeTransformer._();

  String encode(InviteDetailV1WatchlistColourEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InviteDetailV1WatchlistColourEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InviteDetailV1WatchlistColourEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'RED': return InviteDetailV1WatchlistColourEnum.RED;
        case r'GREEN': return InviteDetailV1WatchlistColourEnum.GREEN;
        case r'YELLOW': return InviteDetailV1WatchlistColourEnum.YELLOW;
        case r'ORANGE': return InviteDetailV1WatchlistColourEnum.ORANGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InviteDetailV1WatchlistColourEnumTypeTransformer] instance.
  static InviteDetailV1WatchlistColourEnumTypeTransformer? _instance;
}


