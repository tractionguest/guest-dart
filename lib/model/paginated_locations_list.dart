//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedLocationsList {
  /// Returns a new [PaginatedLocationsList] instance.
  PaginatedLocationsList({
    this.locations = const [],
    @required this.pagination,
  });

  List<Location> locations;

  Pagination pagination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedLocationsList &&
     other.locations == locations &&
     other.pagination == pagination;

  @override
  int get hashCode =>
    (locations == null ? 0 : locations.hashCode) +
    (pagination == null ? 0 : pagination.hashCode);

  @override
  String toString() => 'PaginatedLocationsList[locations=$locations, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'locations'] = locations;
      json[r'pagination'] = pagination;
    return json;
  }

  /// Returns a new [PaginatedLocationsList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginatedLocationsList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PaginatedLocationsList(
        locations: Location.listFromJson(json[r'locations']),
        pagination: Pagination.fromJson(json[r'pagination']),
    );

  static List<PaginatedLocationsList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PaginatedLocationsList>[]
      : json.map((v) => PaginatedLocationsList.fromJson(v)).toList(growable: true == growable);

  static Map<String, PaginatedLocationsList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PaginatedLocationsList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PaginatedLocationsList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PaginatedLocationsList-objects as value to a dart map
  static Map<String, List<PaginatedLocationsList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedLocationsList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PaginatedLocationsList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

