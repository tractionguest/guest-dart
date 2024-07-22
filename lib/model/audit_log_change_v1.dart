//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuditLogChangeV1 {
  /// Returns a new [AuditLogChangeV1] instance.
  AuditLogChangeV1({
    this.fieldName,
    this.fieldValueBefore,
    this.fieldValueAfter,
    this.format,
  });

  /// What the field should be displayed/labeled as
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldName;

  /// The value to be displayed for the field before changes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldValueBefore;

  /// The value to be displayed for the field after changes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldValueAfter;

  /// The format type of the field
  AuditLogChangeV1FormatEnum? format;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuditLogChangeV1 &&
     other.fieldName == fieldName &&
     other.fieldValueBefore == fieldValueBefore &&
     other.fieldValueAfter == fieldValueAfter &&
     other.format == format;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldName == null ? 0 : fieldName!.hashCode) +
    (fieldValueBefore == null ? 0 : fieldValueBefore!.hashCode) +
    (fieldValueAfter == null ? 0 : fieldValueAfter!.hashCode) +
    (format == null ? 0 : format!.hashCode);

  @override
  String toString() => 'AuditLogChangeV1[fieldName=$fieldName, fieldValueBefore=$fieldValueBefore, fieldValueAfter=$fieldValueAfter, format=$format]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (fieldName != null) {
      _json[r'field_name'] = fieldName;
    }
    if (fieldValueBefore != null) {
      _json[r'field_value_before'] = fieldValueBefore;
    }
    if (fieldValueAfter != null) {
      _json[r'field_value_after'] = fieldValueAfter;
    }
    if (format != null) {
      _json[r'format'] = format;
    }
    return _json;
  }

  /// Returns a new [AuditLogChangeV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditLogChangeV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuditLogChangeV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuditLogChangeV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditLogChangeV1(
        fieldName: mapValueOfType<String>(json, r'field_name'),
        fieldValueBefore: mapValueOfType<String>(json, r'field_value_before'),
        fieldValueAfter: mapValueOfType<String>(json, r'field_value_after'),
        format: AuditLogChangeV1FormatEnum.fromJson(json[r'format']),
      );
    }
    return null;
  }

  static List<AuditLogChangeV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditLogChangeV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditLogChangeV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditLogChangeV1> mapFromJson(dynamic json) {
    final map = <String, AuditLogChangeV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditLogChangeV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditLogChangeV1-objects as value to a dart map
  static Map<String, List<AuditLogChangeV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuditLogChangeV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditLogChangeV1.listFromJson(entry.value, growable: growable,);
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

/// The format type of the field
class AuditLogChangeV1FormatEnum {
  /// Instantiate a new enum with the provided [value].
  const AuditLogChangeV1FormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const string = AuditLogChangeV1FormatEnum._(r'string');
  static const boolean = AuditLogChangeV1FormatEnum._(r'boolean');
  static const integer = AuditLogChangeV1FormatEnum._(r'integer');
  static const json = AuditLogChangeV1FormatEnum._(r'json');
  static const noValue = AuditLogChangeV1FormatEnum._(r'no_value');

  /// List of all possible values in this [enum][AuditLogChangeV1FormatEnum].
  static const values = <AuditLogChangeV1FormatEnum>[
    string,
    boolean,
    integer,
    json,
    noValue,
  ];

  static AuditLogChangeV1FormatEnum? fromJson(dynamic value) => AuditLogChangeV1FormatEnumTypeTransformer().decode(value);

  static List<AuditLogChangeV1FormatEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditLogChangeV1FormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditLogChangeV1FormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AuditLogChangeV1FormatEnum] to String,
/// and [decode] dynamic data back to [AuditLogChangeV1FormatEnum].
class AuditLogChangeV1FormatEnumTypeTransformer {
  factory AuditLogChangeV1FormatEnumTypeTransformer() => _instance ??= const AuditLogChangeV1FormatEnumTypeTransformer._();

  const AuditLogChangeV1FormatEnumTypeTransformer._();

  String encode(AuditLogChangeV1FormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuditLogChangeV1FormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuditLogChangeV1FormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'string': return AuditLogChangeV1FormatEnum.string;
        case r'boolean': return AuditLogChangeV1FormatEnum.boolean;
        case r'integer': return AuditLogChangeV1FormatEnum.integer;
        case r'json': return AuditLogChangeV1FormatEnum.json;
        case r'no_value': return AuditLogChangeV1FormatEnum.noValue;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AuditLogChangeV1FormatEnumTypeTransformer] instance.
  static AuditLogChangeV1FormatEnumTypeTransformer? _instance;
}


