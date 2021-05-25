//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedInvitesList {
  /// Returns a new [PaginatedInvitesList] instance.
  PaginatedInvitesList({
    this.invites = const [],
    @required this.pagination,
  });

  List<Invite> invites;

  Pagination pagination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedInvitesList &&
     other.invites == invites &&
     other.pagination == pagination;

  @override
  int get hashCode =>
    (invites == null ? 0 : invites.hashCode) +
    (pagination == null ? 0 : pagination.hashCode);

  @override
  String toString() => 'PaginatedInvitesList[invites=$invites, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'invites'] = invites;
      json[r'pagination'] = pagination;
    return json;
  }

  /// Returns a new [PaginatedInvitesList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginatedInvitesList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PaginatedInvitesList(
        invites: Invite.listFromJson(json[r'invites']),
        pagination: Pagination.fromJson(json[r'pagination']),
    );

  static List<PaginatedInvitesList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PaginatedInvitesList>[]
      : json.map((v) => PaginatedInvitesList.fromJson(v)).toList(growable: true == growable);

  static Map<String, PaginatedInvitesList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PaginatedInvitesList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PaginatedInvitesList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PaginatedInvitesList-objects as value to a dart map
  static Map<String, List<PaginatedInvitesList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedInvitesList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PaginatedInvitesList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

