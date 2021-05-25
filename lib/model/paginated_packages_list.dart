//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedPackagesList {
  /// Returns a new [PaginatedPackagesList] instance.
  PaginatedPackagesList({
    this.packages = const [],
    @required this.pagination,
  });

  List<Package> packages;

  Pagination pagination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedPackagesList &&
     other.packages == packages &&
     other.pagination == pagination;

  @override
  int get hashCode =>
    (packages == null ? 0 : packages.hashCode) +
    (pagination == null ? 0 : pagination.hashCode);

  @override
  String toString() => 'PaginatedPackagesList[packages=$packages, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'packages'] = packages;
      json[r'pagination'] = pagination;
    return json;
  }

  /// Returns a new [PaginatedPackagesList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginatedPackagesList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PaginatedPackagesList(
        packages: Package.listFromJson(json[r'packages']),
        pagination: Pagination.fromJson(json[r'pagination']),
    );

  static List<PaginatedPackagesList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PaginatedPackagesList>[]
      : json.map((v) => PaginatedPackagesList.fromJson(v)).toList(growable: true == growable);

  static Map<String, PaginatedPackagesList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PaginatedPackagesList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PaginatedPackagesList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PaginatedPackagesList-objects as value to a dart map
  static Map<String, List<PaginatedPackagesList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedPackagesList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PaginatedPackagesList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

