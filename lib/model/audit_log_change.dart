//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuditLogChange {
  /// Returns a new [AuditLogChange] instance.
  AuditLogChange({
    this.fieldName,
    this.fieldValueBefore,
    this.fieldValueAfter,
    this.format,
  });

  /// What the field should be displayed/labeled as
  String fieldName;

  /// The value to be displayed for the field before changes
  String fieldValueBefore;

  /// The value to be displayed for the field after changes
  String fieldValueAfter;

  /// The format type of the field
  AuditLogChangeFormatEnum format;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuditLogChange &&
     other.fieldName == fieldName &&
     other.fieldValueBefore == fieldValueBefore &&
     other.fieldValueAfter == fieldValueAfter &&
     other.format == format;

  @override
  int get hashCode =>
    (fieldName == null ? 0 : fieldName.hashCode) +
    (fieldValueBefore == null ? 0 : fieldValueBefore.hashCode) +
    (fieldValueAfter == null ? 0 : fieldValueAfter.hashCode) +
    (format == null ? 0 : format.hashCode);

  @override
  String toString() => 'AuditLogChange[fieldName=$fieldName, fieldValueBefore=$fieldValueBefore, fieldValueAfter=$fieldValueAfter, format=$format]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fieldName != null) {
      json[r'field_name'] = fieldName;
    }
    if (fieldValueBefore != null) {
      json[r'field_value_before'] = fieldValueBefore;
    }
    if (fieldValueAfter != null) {
      json[r'field_value_after'] = fieldValueAfter;
    }
    if (format != null) {
      json[r'format'] = format;
    }
    return json;
  }

  /// Returns a new [AuditLogChange] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuditLogChange fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AuditLogChange(
        fieldName: json[r'field_name'],
        fieldValueBefore: json[r'field_value_before'],
        fieldValueAfter: json[r'field_value_after'],
        format: AuditLogChangeFormatEnum.fromJson(json[r'format']),
    );

  static List<AuditLogChange> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuditLogChange>[]
      : json.map((v) => AuditLogChange.fromJson(v)).toList(growable: true == growable);

  static Map<String, AuditLogChange> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuditLogChange>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AuditLogChange.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AuditLogChange-objects as value to a dart map
  static Map<String, List<AuditLogChange>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuditLogChange>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AuditLogChange.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// The format type of the field
class AuditLogChangeFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const AuditLogChangeFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const string = AuditLogChangeFormatEnum._(r'string');
  static const boolean = AuditLogChangeFormatEnum._(r'boolean');
  static const integer = AuditLogChangeFormatEnum._(r'integer');
  static const json = AuditLogChangeFormatEnum._(r'json');
  static const noValue = AuditLogChangeFormatEnum._(r'no_value');

  /// List of all possible values in this [enum][AuditLogChangeFormatEnum].
  static const values = <AuditLogChangeFormatEnum>[
    string,
    boolean,
    integer,
    json,
    noValue,
  ];

  static AuditLogChangeFormatEnum fromJson(dynamic value) =>
    AuditLogChangeFormatEnumTypeTransformer().decode(value);

  static List<AuditLogChangeFormatEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuditLogChangeFormatEnum>[]
      : json
          .map((value) => AuditLogChangeFormatEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [AuditLogChangeFormatEnum] to String,
/// and [decode] dynamic data back to [AuditLogChangeFormatEnum].
class AuditLogChangeFormatEnumTypeTransformer {
  const AuditLogChangeFormatEnumTypeTransformer._();

  factory AuditLogChangeFormatEnumTypeTransformer() => _instance ??= AuditLogChangeFormatEnumTypeTransformer._();

  String encode(AuditLogChangeFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuditLogChangeFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuditLogChangeFormatEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'string': return AuditLogChangeFormatEnum.string;
      case r'boolean': return AuditLogChangeFormatEnum.boolean;
      case r'integer': return AuditLogChangeFormatEnum.integer;
      case r'json': return AuditLogChangeFormatEnum.json;
      case r'no_value': return AuditLogChangeFormatEnum.noValue;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [AuditLogChangeFormatEnumTypeTransformer] instance.
  static AuditLogChangeFormatEnumTypeTransformer _instance;
}

