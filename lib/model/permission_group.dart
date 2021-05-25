//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PermissionGroup {
  /// Returns a new [PermissionGroup] instance.
  PermissionGroup({
    this.name,
    this.visibility,
    this.permissions = const [],
  });

  String name;

  String visibility;

  List<String> permissions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PermissionGroup &&
     other.name == name &&
     other.visibility == visibility &&
     other.permissions == permissions;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (visibility == null ? 0 : visibility.hashCode) +
    (permissions == null ? 0 : permissions.hashCode);

  @override
  String toString() => 'PermissionGroup[name=$name, visibility=$visibility, permissions=$permissions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (visibility != null) {
      json[r'visibility'] = visibility;
    }
    if (permissions != null) {
      json[r'permissions'] = permissions;
    }
    return json;
  }

  /// Returns a new [PermissionGroup] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PermissionGroup fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PermissionGroup(
        name: json[r'name'],
        visibility: json[r'visibility'],
        permissions: json[r'permissions'] == null
          ? null
          : (json[r'permissions'] as List).cast<String>(),
    );

  static List<PermissionGroup> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PermissionGroup>[]
      : json.map((v) => PermissionGroup.fromJson(v)).toList(growable: true == growable);

  static Map<String, PermissionGroup> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PermissionGroup>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PermissionGroup.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PermissionGroup-objects as value to a dart map
  static Map<String, List<PermissionGroup>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PermissionGroup>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PermissionGroup.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

