//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SigninData {
  /// Returns a new [SigninData] instance.
  SigninData({
    this.customFields = const [],
    this.name,
  });

  List<CustomField> customFields;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigninData &&
     other.customFields == customFields &&
     other.name == name;

  @override
  int get hashCode =>
    (customFields == null ? 0 : customFields.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'SigninData[customFields=$customFields, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (customFields != null) {
      json[r'custom_fields'] = customFields;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [SigninData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SigninData fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SigninData(
        customFields: CustomField.listFromJson(json[r'custom_fields']),
        name: json[r'name'],
    );

  static List<SigninData> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SigninData>[]
      : json.map((v) => SigninData.fromJson(v)).toList(growable: true == growable);

  static Map<String, SigninData> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SigninData>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SigninData.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SigninData-objects as value to a dart map
  static Map<String, List<SigninData>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SigninData>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SigninData.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

