//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExternalWatchlistResult {
  /// Returns a new [ExternalWatchlistResult] instance.
  ExternalWatchlistResult({
    this.matches = const [],
    this.colour,
    this.integration,
    this.searchTerms,
  });

  List<WatchlistMatch> matches;

  /// 
  ExternalWatchlistResultColourEnum colour;

  /// 
  String integration;

  WatchlistSearch searchTerms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExternalWatchlistResult &&
     other.matches == matches &&
     other.colour == colour &&
     other.integration == integration &&
     other.searchTerms == searchTerms;

  @override
  int get hashCode =>
    (matches == null ? 0 : matches.hashCode) +
    (colour == null ? 0 : colour.hashCode) +
    (integration == null ? 0 : integration.hashCode) +
    (searchTerms == null ? 0 : searchTerms.hashCode);

  @override
  String toString() => 'ExternalWatchlistResult[matches=$matches, colour=$colour, integration=$integration, searchTerms=$searchTerms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (matches != null) {
      json[r'matches'] = matches;
    }
    if (colour != null) {
      json[r'colour'] = colour;
    }
    if (integration != null) {
      json[r'integration'] = integration;
    }
    if (searchTerms != null) {
      json[r'search_terms'] = searchTerms;
    }
    return json;
  }

  /// Returns a new [ExternalWatchlistResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalWatchlistResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ExternalWatchlistResult(
        matches: WatchlistMatch.listFromJson(json[r'matches']),
        colour: ExternalWatchlistResultColourEnum.fromJson(json[r'colour']),
        integration: json[r'integration'],
        searchTerms: WatchlistSearch.fromJson(json[r'search_terms']),
    );

  static List<ExternalWatchlistResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ExternalWatchlistResult>[]
      : json.map((v) => ExternalWatchlistResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, ExternalWatchlistResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ExternalWatchlistResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ExternalWatchlistResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ExternalWatchlistResult-objects as value to a dart map
  static Map<String, List<ExternalWatchlistResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ExternalWatchlistResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ExternalWatchlistResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// 
class ExternalWatchlistResultColourEnum {
  /// Instantiate a new enum with the provided [value].
  const ExternalWatchlistResultColourEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RED = ExternalWatchlistResultColourEnum._(r'RED');
  static const GREEN = ExternalWatchlistResultColourEnum._(r'GREEN');
  static const YELLOW = ExternalWatchlistResultColourEnum._(r'YELLOW');
  static const ORANGE = ExternalWatchlistResultColourEnum._(r'ORANGE');

  /// List of all possible values in this [enum][ExternalWatchlistResultColourEnum].
  static const values = <ExternalWatchlistResultColourEnum>[
    RED,
    GREEN,
    YELLOW,
    ORANGE,
  ];

  static ExternalWatchlistResultColourEnum fromJson(dynamic value) =>
    ExternalWatchlistResultColourEnumTypeTransformer().decode(value);

  static List<ExternalWatchlistResultColourEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ExternalWatchlistResultColourEnum>[]
      : json
          .map((value) => ExternalWatchlistResultColourEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ExternalWatchlistResultColourEnum] to String,
/// and [decode] dynamic data back to [ExternalWatchlistResultColourEnum].
class ExternalWatchlistResultColourEnumTypeTransformer {
  const ExternalWatchlistResultColourEnumTypeTransformer._();

  factory ExternalWatchlistResultColourEnumTypeTransformer() => _instance ??= ExternalWatchlistResultColourEnumTypeTransformer._();

  String encode(ExternalWatchlistResultColourEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExternalWatchlistResultColourEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExternalWatchlistResultColourEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RED': return ExternalWatchlistResultColourEnum.RED;
      case r'GREEN': return ExternalWatchlistResultColourEnum.GREEN;
      case r'YELLOW': return ExternalWatchlistResultColourEnum.YELLOW;
      case r'ORANGE': return ExternalWatchlistResultColourEnum.ORANGE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ExternalWatchlistResultColourEnumTypeTransformer] instance.
  static ExternalWatchlistResultColourEnumTypeTransformer _instance;
}

