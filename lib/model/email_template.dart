//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailTemplate {
  /// Returns a new [EmailTemplate] instance.
  EmailTemplate({
    @required this.id,
    this.name,
    this.templateType,
  });

  int id;

  String name;

  String templateType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailTemplate &&
     other.id == id &&
     other.name == name &&
     other.templateType == templateType;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (templateType == null ? 0 : templateType.hashCode);

  @override
  String toString() => 'EmailTemplate[id=$id, name=$name, templateType=$templateType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (name != null) {
      json[r'name'] = name;
    }
    if (templateType != null) {
      json[r'template_type'] = templateType;
    }
    return json;
  }

  /// Returns a new [EmailTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailTemplate fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailTemplate(
        id: json[r'id'],
        name: json[r'name'],
        templateType: json[r'template_type'],
    );

  static List<EmailTemplate> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailTemplate>[]
      : json.map((v) => EmailTemplate.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailTemplate> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailTemplate>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailTemplate.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailTemplate-objects as value to a dart map
  static Map<String, List<EmailTemplate>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailTemplate>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailTemplate.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

