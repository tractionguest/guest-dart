//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InviteCreateParamsV1 {
  /// Returns a new [InviteCreateParamsV1] instance.
  InviteCreateParamsV1({
    this.mobileNumber,
    this.notificationTriggers = const [],
    required this.firstName,
    this.emailTemplateId,
    this.customFields = const [],
    this.hostIds = const [],
    this.watchlistColour,
    this.title,
    this.startDate,
    required this.lastName,
    this.endDate,
    required this.email,
    this.company,
    this.groupVisitId,
    this.parkingStall,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileNumber;

  List<NotificationTriggerCreateParamsV1> notificationTriggers;

  String firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? emailTemplateId;

  List<CustomFieldV1> customFields;

  List<int> hostIds;

  InviteCreateParamsV1WatchlistColourEnum? watchlistColour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// The `start_date` is required for invitations to lobbies
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startDate;

  String lastName;

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
  InviteCreateParamsV1ParkingStall? parkingStall;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteCreateParamsV1 &&
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
     other.groupVisitId == groupVisitId &&
     other.parkingStall == parkingStall;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mobileNumber == null ? 0 : mobileNumber!.hashCode) +
    (notificationTriggers.hashCode) +
    (firstName.hashCode) +
    (emailTemplateId == null ? 0 : emailTemplateId!.hashCode) +
    (customFields.hashCode) +
    (hostIds.hashCode) +
    (watchlistColour == null ? 0 : watchlistColour!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (lastName.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (email.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (groupVisitId == null ? 0 : groupVisitId!.hashCode) +
    (parkingStall == null ? 0 : parkingStall!.hashCode);

  @override
  String toString() => 'InviteCreateParamsV1[mobileNumber=$mobileNumber, notificationTriggers=$notificationTriggers, firstName=$firstName, emailTemplateId=$emailTemplateId, customFields=$customFields, hostIds=$hostIds, watchlistColour=$watchlistColour, title=$title, startDate=$startDate, lastName=$lastName, endDate=$endDate, email=$email, company=$company, groupVisitId=$groupVisitId, parkingStall=$parkingStall]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (mobileNumber != null) {
      _json[r'mobile_number'] = mobileNumber;
    }
      _json[r'notification_triggers'] = notificationTriggers;
      _json[r'first_name'] = firstName;
    if (emailTemplateId != null) {
      _json[r'email_template_id'] = emailTemplateId;
    }
      _json[r'custom_fields'] = customFields;
      _json[r'host_ids'] = hostIds;
    if (watchlistColour != null) {
      _json[r'watchlist_colour'] = watchlistColour;
    }
    if (title != null) {
      _json[r'title'] = title;
    }
    if (startDate != null) {
      _json[r'start_date'] = startDate!.toUtc().toIso8601String();
    }
      _json[r'last_name'] = lastName;
    if (endDate != null) {
      _json[r'end_date'] = endDate!.toUtc().toIso8601String();
    }
      _json[r'email'] = email;
    if (company != null) {
      _json[r'company'] = company;
    }
    if (groupVisitId != null) {
      _json[r'group_visit_id'] = groupVisitId;
    }
    if (parkingStall != null) {
      _json[r'parking_stall'] = parkingStall;
    }
    return _json;
  }

  /// Returns a new [InviteCreateParamsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InviteCreateParamsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InviteCreateParamsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InviteCreateParamsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InviteCreateParamsV1(
        mobileNumber: mapValueOfType<String>(json, r'mobile_number'),
        notificationTriggers: NotificationTriggerCreateParamsV1.listFromJson(json[r'notification_triggers']) ?? const [],
        firstName: mapValueOfType<String>(json, r'first_name')!,
        emailTemplateId: mapValueOfType<int>(json, r'email_template_id'),
        customFields: CustomFieldV1.listFromJson(json[r'custom_fields']) ?? const [],
        hostIds: json[r'host_ids'] is List
            ? (json[r'host_ids'] as List).cast<int>()
            : const [],
        watchlistColour: InviteCreateParamsV1WatchlistColourEnum.fromJson(json[r'watchlist_colour']),
        title: mapValueOfType<String>(json, r'title'),
        startDate: mapDateTime(json, r'start_date', ''),
        lastName: mapValueOfType<String>(json, r'last_name')!,
        endDate: mapDateTime(json, r'end_date', ''),
        email: mapValueOfType<String>(json, r'email')!,
        company: mapValueOfType<String>(json, r'company'),
        groupVisitId: mapValueOfType<int>(json, r'group_visit_id'),
        parkingStall: InviteCreateParamsV1ParkingStall.fromJson(json[r'parking_stall']),
      );
    }
    return null;
  }

  static List<InviteCreateParamsV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InviteCreateParamsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InviteCreateParamsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InviteCreateParamsV1> mapFromJson(dynamic json) {
    final map = <String, InviteCreateParamsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteCreateParamsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InviteCreateParamsV1-objects as value to a dart map
  static Map<String, List<InviteCreateParamsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InviteCreateParamsV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteCreateParamsV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'first_name',
    'last_name',
    'email',
  };
}


class InviteCreateParamsV1WatchlistColourEnum {
  /// Instantiate a new enum with the provided [value].
  const InviteCreateParamsV1WatchlistColourEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RED = InviteCreateParamsV1WatchlistColourEnum._(r'RED');
  static const GREEN = InviteCreateParamsV1WatchlistColourEnum._(r'GREEN');
  static const YELLOW = InviteCreateParamsV1WatchlistColourEnum._(r'YELLOW');
  static const ORANGE = InviteCreateParamsV1WatchlistColourEnum._(r'ORANGE');

  /// List of all possible values in this [enum][InviteCreateParamsV1WatchlistColourEnum].
  static const values = <InviteCreateParamsV1WatchlistColourEnum>[
    RED,
    GREEN,
    YELLOW,
    ORANGE,
  ];

  static InviteCreateParamsV1WatchlistColourEnum? fromJson(dynamic value) => InviteCreateParamsV1WatchlistColourEnumTypeTransformer().decode(value);

  static List<InviteCreateParamsV1WatchlistColourEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InviteCreateParamsV1WatchlistColourEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InviteCreateParamsV1WatchlistColourEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InviteCreateParamsV1WatchlistColourEnum] to String,
/// and [decode] dynamic data back to [InviteCreateParamsV1WatchlistColourEnum].
class InviteCreateParamsV1WatchlistColourEnumTypeTransformer {
  factory InviteCreateParamsV1WatchlistColourEnumTypeTransformer() => _instance ??= const InviteCreateParamsV1WatchlistColourEnumTypeTransformer._();

  const InviteCreateParamsV1WatchlistColourEnumTypeTransformer._();

  String encode(InviteCreateParamsV1WatchlistColourEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InviteCreateParamsV1WatchlistColourEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InviteCreateParamsV1WatchlistColourEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'RED': return InviteCreateParamsV1WatchlistColourEnum.RED;
        case r'GREEN': return InviteCreateParamsV1WatchlistColourEnum.GREEN;
        case r'YELLOW': return InviteCreateParamsV1WatchlistColourEnum.YELLOW;
        case r'ORANGE': return InviteCreateParamsV1WatchlistColourEnum.ORANGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InviteCreateParamsV1WatchlistColourEnumTypeTransformer] instance.
  static InviteCreateParamsV1WatchlistColourEnumTypeTransformer? _instance;
}


