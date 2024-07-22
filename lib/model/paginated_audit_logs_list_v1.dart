//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedAuditLogsListV1 {
  /// Returns a new [PaginatedAuditLogsListV1] instance.
  PaginatedAuditLogsListV1({
    required this.pagination,
    this.auditLogs = const [],
  });

  PaginationV1 pagination;

  List<AuditLogV1> auditLogs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedAuditLogsListV1 &&
     other.pagination == pagination &&
     other.auditLogs == auditLogs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pagination.hashCode) +
    (auditLogs.hashCode);

  @override
  String toString() => 'PaginatedAuditLogsListV1[pagination=$pagination, auditLogs=$auditLogs]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'pagination'] = pagination;
      _json[r'audit_logs'] = auditLogs;
    return _json;
  }

  /// Returns a new [PaginatedAuditLogsListV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginatedAuditLogsListV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginatedAuditLogsListV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginatedAuditLogsListV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginatedAuditLogsListV1(
        pagination: PaginationV1.fromJson(json[r'pagination'])!,
        auditLogs: AuditLogV1.listFromJson(json[r'audit_logs'])!,
      );
    }
    return null;
  }

  static List<PaginatedAuditLogsListV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginatedAuditLogsListV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginatedAuditLogsListV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginatedAuditLogsListV1> mapFromJson(dynamic json) {
    final map = <String, PaginatedAuditLogsListV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedAuditLogsListV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginatedAuditLogsListV1-objects as value to a dart map
  static Map<String, List<PaginatedAuditLogsListV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginatedAuditLogsListV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedAuditLogsListV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'pagination',
    'audit_logs',
  };
}

