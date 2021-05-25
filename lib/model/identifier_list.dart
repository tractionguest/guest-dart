//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IdentifierList {
  /// Returns a new [IdentifierList] instance.
  IdentifierList({
    this.ids = const [],
  });

  List<String> ids;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentifierList &&
     other.ids == ids;

  @override
  int get hashCode =>
    (ids == null ? 0 : ids.hashCode);

  @override
  String toString() => 'IdentifierList[ids=$ids]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (ids != null) {
      json[r'ids'] = ids;
    }
    return json;
  }

  /// Returns a new [IdentifierList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IdentifierList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : IdentifierList(
        ids: json[r'ids'] == null
          ? null
          : (json[r'ids'] as List).cast<String>(),
    );

  static List<IdentifierList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <IdentifierList>[]
      : json.map((v) => IdentifierList.fromJson(v)).toList(growable: true == growable);

  static Map<String, IdentifierList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, IdentifierList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = IdentifierList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of IdentifierList-objects as value to a dart map
  static Map<String, List<IdentifierList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<IdentifierList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = IdentifierList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

