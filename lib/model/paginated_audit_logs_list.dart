part of guest_sdk.api;

class PaginatedAuditLogsList {
  
  Object pagination = null;
  
  List<Object> auditLogs = [];
  PaginatedAuditLogsList();

  @override
  String toString() {
    return 'PaginatedAuditLogsList[pagination=$pagination, auditLogs=$auditLogs, ]';
  }

  PaginatedAuditLogsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Object.fromJson(json['pagination']);
    }
    if (json['audit_logs'] == null) {
      auditLogs = null;
    } else {
      auditLogs = Object.listFromJson(json['audit_logs']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pagination != null)
      json['pagination'] = pagination;
    if (auditLogs != null)
      json['audit_logs'] = auditLogs;
    return json;
  }

  static List<PaginatedAuditLogsList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedAuditLogsList>() : json.map((value) => new PaginatedAuditLogsList.fromJson(value)).toList();
  }

  static Map<String, PaginatedAuditLogsList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedAuditLogsList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedAuditLogsList.fromJson(value));
    }
    return map;
  }
}

