//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedEmailTemplatesList {
  /// Returns a new [PaginatedEmailTemplatesList] instance.
  PaginatedEmailTemplatesList({
    @required this.pagination,
    this.emailTemplates = const [],
  });

  Pagination pagination;

  List<EmailTemplate> emailTemplates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedEmailTemplatesList &&
     other.pagination == pagination &&
     other.emailTemplates == emailTemplates;

  @override
  int get hashCode =>
    (pagination == null ? 0 : pagination.hashCode) +
    (emailTemplates == null ? 0 : emailTemplates.hashCode);

  @override
  String toString() => 'PaginatedEmailTemplatesList[pagination=$pagination, emailTemplates=$emailTemplates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pagination'] = pagination;
      json[r'email_templates'] = emailTemplates;
    return json;
  }

  /// Returns a new [PaginatedEmailTemplatesList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginatedEmailTemplatesList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PaginatedEmailTemplatesList(
        pagination: Pagination.fromJson(json[r'pagination']),
        emailTemplates: EmailTemplate.listFromJson(json[r'email_templates']),
    );

  static List<PaginatedEmailTemplatesList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PaginatedEmailTemplatesList>[]
      : json.map((v) => PaginatedEmailTemplatesList.fromJson(v)).toList(growable: true == growable);

  static Map<String, PaginatedEmailTemplatesList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PaginatedEmailTemplatesList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PaginatedEmailTemplatesList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PaginatedEmailTemplatesList-objects as value to a dart map
  static Map<String, List<PaginatedEmailTemplatesList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedEmailTemplatesList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PaginatedEmailTemplatesList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

