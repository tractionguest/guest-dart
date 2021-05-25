//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedRegistrationsList {
  /// Returns a new [PaginatedRegistrationsList] instance.
  PaginatedRegistrationsList({
    this.registrations = const [],
    this.pagination,
  });

  List<Registration> registrations;

  Pagination pagination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedRegistrationsList &&
     other.registrations == registrations &&
     other.pagination == pagination;

  @override
  int get hashCode =>
    (registrations == null ? 0 : registrations.hashCode) +
    (pagination == null ? 0 : pagination.hashCode);

  @override
  String toString() => 'PaginatedRegistrationsList[registrations=$registrations, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (registrations != null) {
      json[r'registrations'] = registrations;
    }
    if (pagination != null) {
      json[r'pagination'] = pagination;
    }
    return json;
  }

  /// Returns a new [PaginatedRegistrationsList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginatedRegistrationsList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PaginatedRegistrationsList(
        registrations: Registration.listFromJson(json[r'registrations']),
        pagination: Pagination.fromJson(json[r'pagination']),
    );

  static List<PaginatedRegistrationsList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PaginatedRegistrationsList>[]
      : json.map((v) => PaginatedRegistrationsList.fromJson(v)).toList(growable: true == growable);

  static Map<String, PaginatedRegistrationsList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PaginatedRegistrationsList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PaginatedRegistrationsList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PaginatedRegistrationsList-objects as value to a dart map
  static Map<String, List<PaginatedRegistrationsList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedRegistrationsList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PaginatedRegistrationsList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

