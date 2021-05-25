//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedGroupVisitsList {
  /// Returns a new [PaginatedGroupVisitsList] instance.
  PaginatedGroupVisitsList({
    this.pagination,
    this.groupVisits = const [],
  });

  Pagination pagination;

  List<GroupVisit> groupVisits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedGroupVisitsList &&
     other.pagination == pagination &&
     other.groupVisits == groupVisits;

  @override
  int get hashCode =>
    (pagination == null ? 0 : pagination.hashCode) +
    (groupVisits == null ? 0 : groupVisits.hashCode);

  @override
  String toString() => 'PaginatedGroupVisitsList[pagination=$pagination, groupVisits=$groupVisits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (pagination != null) {
      json[r'pagination'] = pagination;
    }
    if (groupVisits != null) {
      json[r'group_visits'] = groupVisits;
    }
    return json;
  }

  /// Returns a new [PaginatedGroupVisitsList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginatedGroupVisitsList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PaginatedGroupVisitsList(
        pagination: Pagination.fromJson(json[r'pagination']),
        groupVisits: GroupVisit.listFromJson(json[r'group_visits']),
    );

  static List<PaginatedGroupVisitsList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PaginatedGroupVisitsList>[]
      : json.map((v) => PaginatedGroupVisitsList.fromJson(v)).toList(growable: true == growable);

  static Map<String, PaginatedGroupVisitsList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PaginatedGroupVisitsList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PaginatedGroupVisitsList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PaginatedGroupVisitsList-objects as value to a dart map
  static Map<String, List<PaginatedGroupVisitsList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedGroupVisitsList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PaginatedGroupVisitsList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

