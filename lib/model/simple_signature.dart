//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SimpleSignature {
  /// Returns a new [SimpleSignature] instance.
  SimpleSignature({
    this.status,
    this.templateName,
    this.id,
    this.title,
  });

  /// 
  String status;

  /// 
  String templateName;

  /// 
  String id;

  /// 
  String title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SimpleSignature &&
     other.status == status &&
     other.templateName == templateName &&
     other.id == id &&
     other.title == title;

  @override
  int get hashCode =>
    (status == null ? 0 : status.hashCode) +
    (templateName == null ? 0 : templateName.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode);

  @override
  String toString() => 'SimpleSignature[status=$status, templateName=$templateName, id=$id, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (status != null) {
      json[r'status'] = status;
    }
    if (templateName != null) {
      json[r'template_name'] = templateName;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    return json;
  }

  /// Returns a new [SimpleSignature] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SimpleSignature fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SimpleSignature(
        status: json[r'status'],
        templateName: json[r'template_name'],
        id: json[r'id'],
        title: json[r'title'],
    );

  static List<SimpleSignature> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SimpleSignature>[]
      : json.map((v) => SimpleSignature.fromJson(v)).toList(growable: true == growable);

  static Map<String, SimpleSignature> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SimpleSignature>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SimpleSignature.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SimpleSignature-objects as value to a dart map
  static Map<String, List<SimpleSignature>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SimpleSignature>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SimpleSignature.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

