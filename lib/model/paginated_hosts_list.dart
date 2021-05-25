//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedHostsList {
  /// Returns a new [PaginatedHostsList] instance.
  PaginatedHostsList({
    @required this.pagination,
    this.hosts = const [],
  });

  Pagination pagination;

  List<Host> hosts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedHostsList &&
     other.pagination == pagination &&
     other.hosts == hosts;

  @override
  int get hashCode =>
    (pagination == null ? 0 : pagination.hashCode) +
    (hosts == null ? 0 : hosts.hashCode);

  @override
  String toString() => 'PaginatedHostsList[pagination=$pagination, hosts=$hosts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pagination'] = pagination;
      json[r'hosts'] = hosts;
    return json;
  }

  /// Returns a new [PaginatedHostsList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginatedHostsList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PaginatedHostsList(
        pagination: Pagination.fromJson(json[r'pagination']),
        hosts: Host.listFromJson(json[r'hosts']),
    );

  static List<PaginatedHostsList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PaginatedHostsList>[]
      : json.map((v) => PaginatedHostsList.fromJson(v)).toList(growable: true == growable);

  static Map<String, PaginatedHostsList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PaginatedHostsList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PaginatedHostsList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PaginatedHostsList-objects as value to a dart map
  static Map<String, List<PaginatedHostsList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedHostsList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PaginatedHostsList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

