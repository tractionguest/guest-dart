//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CustomFieldV1 {
  /// Returns a new [CustomFieldV1] instance.
  CustomFieldV1({
    this.format,
    required this.fieldName,
    required this.fieldValue,
    this.id,
  });

  /// The format type of the field
  CustomFieldV1FormatEnum? format;

  /// What the field should be displayed/labeled as
  String fieldName;

  /// The value to be displayed for the field
  String? fieldValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomFieldV1 &&
     other.format == format &&
     other.fieldName == fieldName &&
     other.fieldValue == fieldValue &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (format == null ? 0 : format!.hashCode) +
    (fieldName.hashCode) +
    (fieldValue == null ? 0 : fieldValue!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'CustomFieldV1[format=$format, fieldName=$fieldName, fieldValue=$fieldValue, id=$id]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (format != null) {
      _json[r'format'] = format;
    }
      _json[r'field_name'] = fieldName;
    if (fieldValue != null) {
      _json[r'field_value'] = fieldValue;
    }
    if (id != null) {
      _json[r'id'] = id;
    }
    return _json;
  }

  /// Returns a new [CustomFieldV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomFieldV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomFieldV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomFieldV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomFieldV1(
        format: CustomFieldV1FormatEnum.fromJson(json[r'format']),
        fieldName: mapValueOfType<String>(json, r'field_name')!,
        fieldValue: mapValueOfType<String>(json, r'field_value'),
        id: mapValueOfType<int>(json, r'id'),
      );
    }
    return null;
  }

  static List<CustomFieldV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomFieldV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomFieldV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomFieldV1> mapFromJson(dynamic json) {
    final map = <String, CustomFieldV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomFieldV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomFieldV1-objects as value to a dart map
  static Map<String, List<CustomFieldV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomFieldV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomFieldV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field_name',
    'field_value',
  };
}

/// The format type of the field
class CustomFieldV1FormatEnum {
  /// Instantiate a new enum with the provided [value].
  const CustomFieldV1FormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const string = CustomFieldV1FormatEnum._(r'string');

  /// List of all possible values in this [enum][CustomFieldV1FormatEnum].
  static const values = <CustomFieldV1FormatEnum>[
    string,
  ];

  static CustomFieldV1FormatEnum? fromJson(dynamic value) => CustomFieldV1FormatEnumTypeTransformer().decode(value);

  static List<CustomFieldV1FormatEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomFieldV1FormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomFieldV1FormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CustomFieldV1FormatEnum] to String,
/// and [decode] dynamic data back to [CustomFieldV1FormatEnum].
class CustomFieldV1FormatEnumTypeTransformer {
  factory CustomFieldV1FormatEnumTypeTransformer() => _instance ??= const CustomFieldV1FormatEnumTypeTransformer._();

  const CustomFieldV1FormatEnumTypeTransformer._();

  String encode(CustomFieldV1FormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CustomFieldV1FormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CustomFieldV1FormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'string': return CustomFieldV1FormatEnum.string;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CustomFieldV1FormatEnumTypeTransformer] instance.
  static CustomFieldV1FormatEnumTypeTransformer? _instance;
}


