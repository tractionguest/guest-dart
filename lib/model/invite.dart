//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Invite {
  /// Returns a new [Invite] instance.
  Invite({
    @required this.id,
    this.registration,
    this.mobileNumber,
    this.email,
    this.endDate,
    this.inviteWatchlist,
    this.hosts = const [],
    this.watchlistColour,
    this.location,
    this.startDate,
    this.lastName,
    this.firstName,
    this.groupVisit,
  });

  int id;

  Registration registration;

  /// 
  String mobileNumber;

  /// 
  String email;

  /// 
  DateTime endDate;

  InviteWatchlist inviteWatchlist;

  List<Host> hosts;

  InviteWatchlistColourEnum watchlistColour;

  Location location;

  DateTime startDate;

  String lastName;

  String firstName;

  GroupVisit groupVisit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Invite &&
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
    (id == null ? 0 : id.hashCode) +
    (registration == null ? 0 : registration.hashCode) +
    (mobileNumber == null ? 0 : mobileNumber.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (endDate == null ? 0 : endDate.hashCode) +
    (inviteWatchlist == null ? 0 : inviteWatchlist.hashCode) +
    (hosts == null ? 0 : hosts.hashCode) +
    (watchlistColour == null ? 0 : watchlistColour.hashCode) +
    (location == null ? 0 : location.hashCode) +
    (startDate == null ? 0 : startDate.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (groupVisit == null ? 0 : groupVisit.hashCode);

  @override
  String toString() => 'Invite[id=$id, registration=$registration, mobileNumber=$mobileNumber, email=$email, endDate=$endDate, inviteWatchlist=$inviteWatchlist, hosts=$hosts, watchlistColour=$watchlistColour, location=$location, startDate=$startDate, lastName=$lastName, firstName=$firstName, groupVisit=$groupVisit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (registration != null) {
      json[r'registration'] = registration;
    }
    if (mobileNumber != null) {
      json[r'mobile_number'] = mobileNumber;
    }
      json[r'email'] = email == null ? null : email;
    if (endDate != null) {
      json[r'end_date'] = endDate.toUtc().toIso8601String();
    }
    if (inviteWatchlist != null) {
      json[r'invite_watchlist'] = inviteWatchlist;
    }
    if (hosts != null) {
      json[r'hosts'] = hosts;
    }
    if (watchlistColour != null) {
      json[r'watchlist_colour'] = watchlistColour;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    if (startDate != null) {
      json[r'start_date'] = startDate.toUtc().toIso8601String();
    }
      json[r'last_name'] = lastName == null ? null : lastName;
      json[r'first_name'] = firstName == null ? null : firstName;
    if (groupVisit != null) {
      json[r'group_visit'] = groupVisit;
    }
    return json;
  }

  /// Returns a new [Invite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Invite fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Invite(
        id: json[r'id'],
        registration: Registration.fromJson(json[r'registration']),
        mobileNumber: json[r'mobile_number'],
        email: json[r'email'],
        endDate: json[r'end_date'] == null
          ? null
          : DateTime.parse(json[r'end_date']),
        inviteWatchlist: InviteWatchlist.fromJson(json[r'invite_watchlist']),
        hosts: Host.listFromJson(json[r'hosts']),
        watchlistColour: InviteWatchlistColourEnum.fromJson(json[r'watchlist_colour']),
        location: Location.fromJson(json[r'location']),
        startDate: json[r'start_date'] == null
          ? null
          : DateTime.parse(json[r'start_date']),
        lastName: json[r'last_name'],
        firstName: json[r'first_name'],
        groupVisit: GroupVisit.fromJson(json[r'group_visit']),
    );

  static List<Invite> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Invite>[]
      : json.map((v) => Invite.fromJson(v)).toList(growable: true == growable);

  static Map<String, Invite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Invite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Invite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Invite-objects as value to a dart map
  static Map<String, List<Invite>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Invite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Invite.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class InviteWatchlistColourEnum {
  /// Instantiate a new enum with the provided [value].
  const InviteWatchlistColourEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RED = InviteWatchlistColourEnum._(r'RED');
  static const GREEN = InviteWatchlistColourEnum._(r'GREEN');
  static const YELLOW = InviteWatchlistColourEnum._(r'YELLOW');
  static const ORANGE = InviteWatchlistColourEnum._(r'ORANGE');

  /// List of all possible values in this [enum][InviteWatchlistColourEnum].
  static const values = <InviteWatchlistColourEnum>[
    RED,
    GREEN,
    YELLOW,
    ORANGE,
  ];

  static InviteWatchlistColourEnum fromJson(dynamic value) =>
    InviteWatchlistColourEnumTypeTransformer().decode(value);

  static List<InviteWatchlistColourEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InviteWatchlistColourEnum>[]
      : json
          .map((value) => InviteWatchlistColourEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InviteWatchlistColourEnum] to String,
/// and [decode] dynamic data back to [InviteWatchlistColourEnum].
class InviteWatchlistColourEnumTypeTransformer {
  const InviteWatchlistColourEnumTypeTransformer._();

  factory InviteWatchlistColourEnumTypeTransformer() => _instance ??= InviteWatchlistColourEnumTypeTransformer._();

  String encode(InviteWatchlistColourEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InviteWatchlistColourEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InviteWatchlistColourEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RED': return InviteWatchlistColourEnum.RED;
      case r'GREEN': return InviteWatchlistColourEnum.GREEN;
      case r'YELLOW': return InviteWatchlistColourEnum.YELLOW;
      case r'ORANGE': return InviteWatchlistColourEnum.ORANGE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InviteWatchlistColourEnumTypeTransformer] instance.
  static InviteWatchlistColourEnumTypeTransformer _instance;
}

