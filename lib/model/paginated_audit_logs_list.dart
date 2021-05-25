//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedAuditLogsList {
  /// Returns a new [PaginatedAuditLogsList] instance.
  PaginatedAuditLogsList({
    @required this.pagination,
    this.auditLogs = const [],
  });

  Pagination pagination;

  List<AuditLog> auditLogs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedAuditLogsList &&
     other.pagination == pagination &&
     other.auditLogs == auditLogs;

  @override
  int get hashCode =>
    (pagination == null ? 0 : pagination.hashCode) +
    (auditLogs == null ? 0 : auditLogs.hashCode);

  @override
  String toString() => 'PaginatedAuditLogsList[pagination=$pagination, auditLogs=$auditLogs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pagination'] = pagination;
      json[r'audit_logs'] = auditLogs;
    return json;
  }

  /// Returns a new [PaginatedAuditLogsList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginatedAuditLogsList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PaginatedAuditLogsList(
        pagination: Pagination.fromJson(json[r'pagination']),
        auditLogs: AuditLog.listFromJson(json[r'audit_logs']),
    );

  static List<PaginatedAuditLogsList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PaginatedAuditLogsList>[]
      : json.map((v) => PaginatedAuditLogsList.fromJson(v)).toList(growable: true == growable);

  static Map<String, PaginatedAuditLogsList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PaginatedAuditLogsList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PaginatedAuditLogsList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PaginatedAuditLogsList-objects as value to a dart map
  static Map<String, List<PaginatedAuditLogsList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PaginatedAuditLogsList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PaginatedAuditLogsList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

