//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedSigninsList {
  /// Returns a new [PaginatedSigninsList] instance.
  PaginatedSigninsList({
    @required this.pagination,
    this.signins = const [],
  });

  Pagination pagination;

  List<Signin> signins;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedSigninsList &&
     other.pagination == pagination &&
     other.signins == signins;

  @override
  int get hashCode =>
    (pagination == null ? 0 : pagination.hashCode) +
    (signins == null ? 0 : signins.hashCode);

  @override
  String toString() => 'PaginatedSigninsList[pagination=$pagination, signins=$signins]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pagination'] = pagination;
      json[r'signins'] = signins;
    return json;
  }

  /// Returns a new [PaginatedSigninsList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginatedSigninsList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PaginatedSigninsList(
        pagination: Pagination.fromJson(json[r'pagination']),
        signins: Signin.listFromJson(json[r'signins']),
    );

  static List<PaginatedSigninsList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PaginatedSigninsList>[]
      : json.map((v) => PaginatedSigninsList.fromJson(v)).toList(growable: true == growable);

  static Map<String, PaginatedSigninsList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PaginatedSigninsList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PaginatedSigninsList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PaginatedSigninsList-objects as value to a dart map
  static Map<String, List<PaginatedSigninsList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedSigninsList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PaginatedSigninsList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

