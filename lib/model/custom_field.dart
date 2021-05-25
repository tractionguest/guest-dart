//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CustomField {
  /// Returns a new [CustomField] instance.
  CustomField({
    this.format,
    @required this.fieldName,
    this.fieldValue,
    this.id,
  });

  /// The format type of the field
  CustomFieldFormatEnum format;

  /// What the field should be displayed/labeled as
  String fieldName;

  /// The value to be displayed for the field
  String fieldValue;

  int id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomField &&
     other.format == format &&
     other.fieldName == fieldName &&
     other.fieldValue == fieldValue &&
     other.id == id;

  @override
  int get hashCode =>
    (format == null ? 0 : format.hashCode) +
    (fieldName == null ? 0 : fieldName.hashCode) +
    (fieldValue == null ? 0 : fieldValue.hashCode) +
    (id == null ? 0 : id.hashCode);

  @override
  String toString() => 'CustomField[format=$format, fieldName=$fieldName, fieldValue=$fieldValue, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (format != null) {
      json[r'format'] = format;
    }
      json[r'field_name'] = fieldName;
      json[r'field_value'] = fieldValue == null ? null : fieldValue;
    if (id != null) {
      json[r'id'] = id;
    }
    return json;
  }

  /// Returns a new [CustomField] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CustomField fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CustomField(
        format: CustomFieldFormatEnum.fromJson(json[r'format']),
        fieldName: json[r'field_name'],
        fieldValue: json[r'field_value'],
        id: json[r'id'],
    );

  static List<CustomField> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CustomField>[]
      : json.map((v) => CustomField.fromJson(v)).toList(growable: true == growable);

  static Map<String, CustomField> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CustomField>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CustomField.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CustomField-objects as value to a dart map
  static Map<String, List<CustomField>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CustomField>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CustomField.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// The format type of the field
class CustomFieldFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const CustomFieldFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const string = CustomFieldFormatEnum._(r'string');

  /// List of all possible values in this [enum][CustomFieldFormatEnum].
  static const values = <CustomFieldFormatEnum>[
    string,
  ];

  static CustomFieldFormatEnum fromJson(dynamic value) =>
    CustomFieldFormatEnumTypeTransformer().decode(value);

  static List<CustomFieldFormatEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CustomFieldFormatEnum>[]
      : json
          .map((value) => CustomFieldFormatEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CustomFieldFormatEnum] to String,
/// and [decode] dynamic data back to [CustomFieldFormatEnum].
class CustomFieldFormatEnumTypeTransformer {
  const CustomFieldFormatEnumTypeTransformer._();

  factory CustomFieldFormatEnumTypeTransformer() => _instance ??= CustomFieldFormatEnumTypeTransformer._();

  String encode(CustomFieldFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CustomFieldFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CustomFieldFormatEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'string': return CustomFieldFormatEnum.string;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CustomFieldFormatEnumTypeTransformer] instance.
  static CustomFieldFormatEnumTypeTransformer _instance;
}

