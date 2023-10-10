//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InviteV1 {
  /// Returns a new [InviteV1] instance.
  InviteV1({
    required this.id,
    this.registration,
    this.mobileNumber,
    required this.email,
    this.endDate,
    this.inviteWatchlist,
    this.hosts = const [],
    this.watchlistColour,
    this.location,
    this.startDate,
    required this.lastName,
    required this.firstName,
    this.groupVisit,
  });

  int id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RegistrationV1? registration;

  /// 
  String? mobileNumber;

  /// 
  String? email;

  /// 
  DateTime? endDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InviteWatchlistV1? inviteWatchlist;

  List<HostV1> hosts;

  InviteV1WatchlistColourEnum? watchlistColour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocationV1? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startDate;

  String? lastName;

  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GroupVisitV1? groupVisit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteV1 &&
     other.id == id &&
     other.registration == registration &&
     other.mobileNumber == mobileNumber &&
     other.email == email &&
     other.endDate == endDate &&
     other.inviteWatchlist == inviteWatchlist &&
     other.hosts == hosts &&
     other.watchlistColour == watchlistColour &&
     other.location == location &&
     other.startDate == startDate &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.groupVisit == groupVisit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (registration == null ? 0 : registration!.hashCode) +
    (mobileNumber == null ? 0 : mobileNumber!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (inviteWatchlist == null ? 0 : inviteWatchlist!.hashCode) +
    (hosts.hashCode) +
    (watchlistColour == null ? 0 : watchlistColour!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (groupVisit == null ? 0 : groupVisit!.hashCode);

  @override
  String toString() => 'InviteV1[id=$id, registration=$registration, mobileNumber=$mobileNumber, email=$email, endDate=$endDate, inviteWatchlist=$inviteWatchlist, hosts=$hosts, watchlistColour=$watchlistColour, location=$location, startDate=$startDate, lastName=$lastName, firstName=$firstName, groupVisit=$groupVisit]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
    if (registration != null) {
      _json[r'registration'] = registration;
    }
    if (mobileNumber != null) {
      _json[r'mobile_number'] = mobileNumber;
    }
    if (email != null) {
      _json[r'email'] = email;
    }
    if (endDate != null) {
      _json[r'end_date'] = endDate!.toUtc().toIso8601String();
    }
    if (inviteWatchlist != null) {
      _json[r'invite_watchlist'] = inviteWatchlist;
    }
      _json[r'hosts'] = hosts;
    if (watchlistColour != null) {
      _json[r'watchlist_colour'] = watchlistColour;
    }
    if (location != null) {
      _json[r'location'] = location;
    }
    if (startDate != null) {
      _json[r'start_date'] = startDate!.toUtc().toIso8601String();
    }
    if (lastName != null) {
      _json[r'last_name'] = lastName;
    }
    if (firstName != null) {
      _json[r'first_name'] = firstName;
    }
    if (groupVisit != null) {
      _json[r'group_visit'] = groupVisit;
    }
    return _json;
  }

  /// Returns a new [InviteV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InviteV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InviteV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InviteV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InviteV1(
        id: mapValueOfType<int>(json, r'id')!,
        registration: RegistrationV1.fromJson(json[r'registration']),
        mobileNumber: mapValueOfType<String>(json, r'mobile_number'),
        email: mapValueOfType<String>(json, r'email'),
        endDate: mapDateTime(json, r'end_date', ''),
        inviteWatchlist: InviteWatchlistV1.fromJson(json[r'invite_watchlist']),
        hosts: HostV1.listFromJson(json[r'hosts']) ?? const [],
        watchlistColour: InviteV1WatchlistColourEnum.fromJson(json[r'watchlist_colour']),
        location: LocationV1.fromJson(json[r'location']),
        startDate: mapDateTime(json, r'start_date', ''),
        lastName: mapValueOfType<String>(json, r'last_name'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        groupVisit: GroupVisitV1.fromJson(json[r'group_visit']),
      );
    }
    return null;
  }

  static List<InviteV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InviteV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InviteV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InviteV1> mapFromJson(dynamic json) {
    final map = <String, InviteV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InviteV1-objects as value to a dart map
  static Map<String, List<InviteV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InviteV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteV1.listFromJson(entry.value, growable: growable,);
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
    'email',
    'last_name',
    'first_name',
  };
}


class InviteV1WatchlistColourEnum {
  /// Instantiate a new enum with the provided [value].
  const InviteV1WatchlistColourEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RED = InviteV1WatchlistColourEnum._(r'RED');
  static const GREEN = InviteV1WatchlistColourEnum._(r'GREEN');
  static const YELLOW = InviteV1WatchlistColourEnum._(r'YELLOW');
  static const ORANGE = InviteV1WatchlistColourEnum._(r'ORANGE');

  /// List of all possible values in this [enum][InviteV1WatchlistColourEnum].
  static const values = <InviteV1WatchlistColourEnum>[
    RED,
    GREEN,
    YELLOW,
    ORANGE,
  ];

  static InviteV1WatchlistColourEnum? fromJson(dynamic value) => InviteV1WatchlistColourEnumTypeTransformer().decode(value);

  static List<InviteV1WatchlistColourEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InviteV1WatchlistColourEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InviteV1WatchlistColourEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InviteV1WatchlistColourEnum] to String,
/// and [decode] dynamic data back to [InviteV1WatchlistColourEnum].
class InviteV1WatchlistColourEnumTypeTransformer {
  factory InviteV1WatchlistColourEnumTypeTransformer() => _instance ??= const InviteV1WatchlistColourEnumTypeTransformer._();

  const InviteV1WatchlistColourEnumTypeTransformer._();

  String encode(InviteV1WatchlistColourEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InviteV1WatchlistColourEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InviteV1WatchlistColourEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'RED': return InviteV1WatchlistColourEnum.RED;
        case r'GREEN': return InviteV1WatchlistColourEnum.GREEN;
        case r'YELLOW': return InviteV1WatchlistColourEnum.YELLOW;
        case r'ORANGE': return InviteV1WatchlistColourEnum.ORANGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InviteV1WatchlistColourEnumTypeTransformer] instance.
  static InviteV1WatchlistColourEnumTypeTransformer? _instance;
}


