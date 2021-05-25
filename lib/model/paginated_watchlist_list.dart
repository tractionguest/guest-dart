//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedWatchlistList {
  /// Returns a new [PaginatedWatchlistList] instance.
  PaginatedWatchlistList({
    this.watchlists = const [],
    @required this.pagination,
  });

  List<Watchlist> watchlists;

  Pagination pagination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedWatchlistList &&
     other.watchlists == watchlists &&
     other.pagination == pagination;

  @override
  int get hashCode =>
    (watchlists == null ? 0 : watchlists.hashCode) +
    (pagination == null ? 0 : pagination.hashCode);

  @override
  String toString() => 'PaginatedWatchlistList[watchlists=$watchlists, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'watchlists'] = watchlists;
      json[r'pagination'] = pagination;
    return json;
  }

  /// Returns a new [PaginatedWatchlistList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginatedWatchlistList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PaginatedWatchlistList(
        watchlists: Watchlist.listFromJson(json[r'watchlists']),
        pagination: Pagination.fromJson(json[r'pagination']),
    );

  static List<PaginatedWatchlistList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PaginatedWatchlistList>[]
      : json.map((v) => PaginatedWatchlistList.fromJson(v)).toList(growable: true == growable);

  static Map<String, PaginatedWatchlistList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PaginatedWatchlistList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PaginatedWatchlistList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PaginatedWatchlistList-objects as value to a dart map
  static Map<String, List<PaginatedWatchlistList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedWatchlistList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PaginatedWatchlistList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

