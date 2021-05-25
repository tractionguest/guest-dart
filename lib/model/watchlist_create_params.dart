//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WatchlistCreateParams {
  /// Returns a new [WatchlistCreateParams] instance.
  WatchlistCreateParams({
    this.aliases = const [],
    this.notes,
    this.lastName,
    this.firstName,
    this.email,
    this.colour,
  });

  List<String> aliases;

  String notes;

  String lastName;

  String firstName;

  String email;

  WatchlistCreateParamsColourEnum colour;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WatchlistCreateParams &&
     other.aliases == aliases &&
     other.notes == notes &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.email == email &&
     other.colour == colour;

  @override
  int get hashCode =>
    (aliases == null ? 0 : aliases.hashCode) +
    (notes == null ? 0 : notes.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (colour == null ? 0 : colour.hashCode);

  @override
  String toString() => 'WatchlistCreateParams[aliases=$aliases, notes=$notes, lastName=$lastName, firstName=$firstName, email=$email, colour=$colour]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (aliases != null) {
      json[r'aliases'] = aliases;
    }
    if (notes != null) {
      json[r'notes'] = notes;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (colour != null) {
      json[r'colour'] = colour;
    }
    return json;
  }

  /// Returns a new [WatchlistCreateParams] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WatchlistCreateParams fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WatchlistCreateParams(
        aliases: json[r'aliases'] == null
          ? null
          : (json[r'aliases'] as List).cast<String>(),
        notes: json[r'notes'],
        lastName: json[r'last_name'],
        firstName: json[r'first_name'],
        email: json[r'email'],
        colour: WatchlistCreateParamsColourEnum.fromJson(json[r'colour']),
    );

  static List<WatchlistCreateParams> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WatchlistCreateParams>[]
      : json.map((v) => WatchlistCreateParams.fromJson(v)).toList(growable: true == growable);

  static Map<String, WatchlistCreateParams> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WatchlistCreateParams>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WatchlistCreateParams.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WatchlistCreateParams-objects as value to a dart map
  static Map<String, List<WatchlistCreateParams>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WatchlistCreateParams>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WatchlistCreateParams.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class WatchlistCreateParamsColourEnum {
  /// Instantiate a new enum with the provided [value].
  const WatchlistCreateParamsColourEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RED = WatchlistCreateParamsColourEnum._(r'RED');
  static const YELLOW = WatchlistCreateParamsColourEnum._(r'YELLOW');
  static const GREEN = WatchlistCreateParamsColourEnum._(r'GREEN');
  static const ORANGE = WatchlistCreateParamsColourEnum._(r'ORANGE');

  /// List of all possible values in this [enum][WatchlistCreateParamsColourEnum].
  static const values = <WatchlistCreateParamsColourEnum>[
    RED,
    YELLOW,
    GREEN,
    ORANGE,
  ];

  static WatchlistCreateParamsColourEnum fromJson(dynamic value) =>
    WatchlistCreateParamsColourEnumTypeTransformer().decode(value);

  static List<WatchlistCreateParamsColourEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WatchlistCreateParamsColourEnum>[]
      : json
          .map((value) => WatchlistCreateParamsColourEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WatchlistCreateParamsColourEnum] to String,
/// and [decode] dynamic data back to [WatchlistCreateParamsColourEnum].
class WatchlistCreateParamsColourEnumTypeTransformer {
  const WatchlistCreateParamsColourEnumTypeTransformer._();

  factory WatchlistCreateParamsColourEnumTypeTransformer() => _instance ??= WatchlistCreateParamsColourEnumTypeTransformer._();

  String encode(WatchlistCreateParamsColourEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WatchlistCreateParamsColourEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WatchlistCreateParamsColourEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RED': return WatchlistCreateParamsColourEnum.RED;
      case r'YELLOW': return WatchlistCreateParamsColourEnum.YELLOW;
      case r'GREEN': return WatchlistCreateParamsColourEnum.GREEN;
      case r'ORANGE': return WatchlistCreateParamsColourEnum.ORANGE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WatchlistCreateParamsColourEnumTypeTransformer] instance.
  static WatchlistCreateParamsColourEnumTypeTransformer _instance;
}

