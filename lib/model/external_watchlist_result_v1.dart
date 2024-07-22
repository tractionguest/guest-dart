//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExternalWatchlistResultV1 {
  /// Returns a new [ExternalWatchlistResultV1] instance.
  ExternalWatchlistResultV1({
    this.matches = const [],
    this.colour,
    this.integration,
    this.searchTerms,
  });

  List<WatchlistMatchV1> matches;

  /// 
  ExternalWatchlistResultV1ColourEnum? colour;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? integration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WatchlistSearchV1? searchTerms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExternalWatchlistResultV1 &&
     other.matches == matches &&
     other.colour == colour &&
     other.integration == integration &&
     other.searchTerms == searchTerms;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (matches.hashCode) +
    (colour == null ? 0 : colour!.hashCode) +
    (integration == null ? 0 : integration!.hashCode) +
    (searchTerms == null ? 0 : searchTerms!.hashCode);

  @override
  String toString() => 'ExternalWatchlistResultV1[matches=$matches, colour=$colour, integration=$integration, searchTerms=$searchTerms]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'matches'] = matches;
    if (colour != null) {
      _json[r'colour'] = colour;
    }
    if (integration != null) {
      _json[r'integration'] = integration;
    }
    if (searchTerms != null) {
      _json[r'search_terms'] = searchTerms;
    }
    return _json;
  }

  /// Returns a new [ExternalWatchlistResultV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExternalWatchlistResultV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExternalWatchlistResultV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExternalWatchlistResultV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExternalWatchlistResultV1(
        matches: WatchlistMatchV1.listFromJson(json[r'matches']) ?? const [],
        colour: ExternalWatchlistResultV1ColourEnum.fromJson(json[r'colour']),
        integration: mapValueOfType<String>(json, r'integration'),
        searchTerms: WatchlistSearchV1.fromJson(json[r'search_terms']),
      );
    }
    return null;
  }

  static List<ExternalWatchlistResultV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalWatchlistResultV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalWatchlistResultV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExternalWatchlistResultV1> mapFromJson(dynamic json) {
    final map = <String, ExternalWatchlistResultV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExternalWatchlistResultV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExternalWatchlistResultV1-objects as value to a dart map
  static Map<String, List<ExternalWatchlistResultV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExternalWatchlistResultV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExternalWatchlistResultV1.listFromJson(entry.value, growable: growable,);
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

/// 
class ExternalWatchlistResultV1ColourEnum {
  /// Instantiate a new enum with the provided [value].
  const ExternalWatchlistResultV1ColourEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RED = ExternalWatchlistResultV1ColourEnum._(r'RED');
  static const GREEN = ExternalWatchlistResultV1ColourEnum._(r'GREEN');
  static const YELLOW = ExternalWatchlistResultV1ColourEnum._(r'YELLOW');
  static const ORANGE = ExternalWatchlistResultV1ColourEnum._(r'ORANGE');
  static const GRAY = ExternalWatchlistResultV1ColourEnum._(r'GRAY');

  /// List of all possible values in this [enum][ExternalWatchlistResultV1ColourEnum].
  static const values = <ExternalWatchlistResultV1ColourEnum>[
    RED,
    GREEN,
    YELLOW,
    ORANGE,
    GRAY,
  ];

  static ExternalWatchlistResultV1ColourEnum? fromJson(dynamic value) => ExternalWatchlistResultV1ColourEnumTypeTransformer().decode(value);

  static List<ExternalWatchlistResultV1ColourEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalWatchlistResultV1ColourEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalWatchlistResultV1ColourEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExternalWatchlistResultV1ColourEnum] to String,
/// and [decode] dynamic data back to [ExternalWatchlistResultV1ColourEnum].
class ExternalWatchlistResultV1ColourEnumTypeTransformer {
  factory ExternalWatchlistResultV1ColourEnumTypeTransformer() => _instance ??= const ExternalWatchlistResultV1ColourEnumTypeTransformer._();

  const ExternalWatchlistResultV1ColourEnumTypeTransformer._();

  String encode(ExternalWatchlistResultV1ColourEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExternalWatchlistResultV1ColourEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExternalWatchlistResultV1ColourEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'RED': return ExternalWatchlistResultV1ColourEnum.RED;
        case r'GREEN': return ExternalWatchlistResultV1ColourEnum.GREEN;
        case r'YELLOW': return ExternalWatchlistResultV1ColourEnum.YELLOW;
        case r'ORANGE': return ExternalWatchlistResultV1ColourEnum.ORANGE;
        case r'GRAY': return ExternalWatchlistResultV1ColourEnum.GRAY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExternalWatchlistResultV1ColourEnumTypeTransformer] instance.
  static ExternalWatchlistResultV1ColourEnumTypeTransformer? _instance;
}


