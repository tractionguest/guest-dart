//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WatchlistCreateParamsV1 {
  /// Returns a new [WatchlistCreateParamsV1] instance.
  WatchlistCreateParamsV1({
    this.aliases = const [],
    this.notes,
    this.lastName,
    this.firstName,
    this.email,
    this.colour,
    this.base64Image,
    this.driverLicense,
  });

  List<String> aliases;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notes;

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
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  WatchlistCreateParamsV1ColourEnum? colour;

  /// A base64 encoded image. base64_image should be strict encoded 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? base64Image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driverLicense;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WatchlistCreateParamsV1 &&
     other.aliases == aliases &&
     other.notes == notes &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.email == email &&
     other.colour == colour &&
     other.base64Image == base64Image &&
     other.driverLicense == driverLicense;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aliases.hashCode) +
    (notes == null ? 0 : notes!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (colour == null ? 0 : colour!.hashCode) +
    (base64Image == null ? 0 : base64Image!.hashCode) +
    (driverLicense == null ? 0 : driverLicense!.hashCode);

  @override
  String toString() => 'WatchlistCreateParamsV1[aliases=$aliases, notes=$notes, lastName=$lastName, firstName=$firstName, email=$email, colour=$colour, base64Image=$base64Image, driverLicense=$driverLicense]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'aliases'] = aliases;
    if (notes != null) {
      _json[r'notes'] = notes;
    }
    if (lastName != null) {
      _json[r'last_name'] = lastName;
    }
    if (firstName != null) {
      _json[r'first_name'] = firstName;
    }
    if (email != null) {
      _json[r'email'] = email;
    }
    if (colour != null) {
      _json[r'colour'] = colour;
    }
    if (base64Image != null) {
      _json[r'base64_image'] = base64Image;
    }
    if (driverLicense != null) {
      _json[r'driver_license'] = driverLicense;
    }
    return _json;
  }

  /// Returns a new [WatchlistCreateParamsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WatchlistCreateParamsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WatchlistCreateParamsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WatchlistCreateParamsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WatchlistCreateParamsV1(
        aliases: json[r'aliases'] is List
            ? (json[r'aliases'] as List).cast<String>()
            : const [],
        notes: mapValueOfType<String>(json, r'notes'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        email: mapValueOfType<String>(json, r'email'),
        colour: WatchlistCreateParamsV1ColourEnum.fromJson(json[r'colour']),
        base64Image: mapValueOfType<String>(json, r'base64_image'),
        driverLicense: mapValueOfType<String>(json, r'driver_license'),
      );
    }
    return null;
  }

  static List<WatchlistCreateParamsV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WatchlistCreateParamsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WatchlistCreateParamsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WatchlistCreateParamsV1> mapFromJson(dynamic json) {
    final map = <String, WatchlistCreateParamsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WatchlistCreateParamsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WatchlistCreateParamsV1-objects as value to a dart map
  static Map<String, List<WatchlistCreateParamsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WatchlistCreateParamsV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WatchlistCreateParamsV1.listFromJson(entry.value, growable: growable,);
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


class WatchlistCreateParamsV1ColourEnum {
  /// Instantiate a new enum with the provided [value].
  const WatchlistCreateParamsV1ColourEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RED = WatchlistCreateParamsV1ColourEnum._(r'RED');
  static const YELLOW = WatchlistCreateParamsV1ColourEnum._(r'YELLOW');
  static const GREEN = WatchlistCreateParamsV1ColourEnum._(r'GREEN');
  static const ORANGE = WatchlistCreateParamsV1ColourEnum._(r'ORANGE');

  /// List of all possible values in this [enum][WatchlistCreateParamsV1ColourEnum].
  static const values = <WatchlistCreateParamsV1ColourEnum>[
    RED,
    YELLOW,
    GREEN,
    ORANGE,
  ];

  static WatchlistCreateParamsV1ColourEnum? fromJson(dynamic value) => WatchlistCreateParamsV1ColourEnumTypeTransformer().decode(value);

  static List<WatchlistCreateParamsV1ColourEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WatchlistCreateParamsV1ColourEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WatchlistCreateParamsV1ColourEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WatchlistCreateParamsV1ColourEnum] to String,
/// and [decode] dynamic data back to [WatchlistCreateParamsV1ColourEnum].
class WatchlistCreateParamsV1ColourEnumTypeTransformer {
  factory WatchlistCreateParamsV1ColourEnumTypeTransformer() => _instance ??= const WatchlistCreateParamsV1ColourEnumTypeTransformer._();

  const WatchlistCreateParamsV1ColourEnumTypeTransformer._();

  String encode(WatchlistCreateParamsV1ColourEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WatchlistCreateParamsV1ColourEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WatchlistCreateParamsV1ColourEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'RED': return WatchlistCreateParamsV1ColourEnum.RED;
        case r'YELLOW': return WatchlistCreateParamsV1ColourEnum.YELLOW;
        case r'GREEN': return WatchlistCreateParamsV1ColourEnum.GREEN;
        case r'ORANGE': return WatchlistCreateParamsV1ColourEnum.ORANGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WatchlistCreateParamsV1ColourEnumTypeTransformer] instance.
  static WatchlistCreateParamsV1ColourEnumTypeTransformer? _instance;
}


