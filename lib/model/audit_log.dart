//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuditLog {
  /// Returns a new [AuditLog] instance.
  AuditLog({
    @required this.id,
    this.createdAt,
    this.requestUuid,
    this.remoteAddress,
    this.comment,
    this.version,
    this.auditedChanges = const [],
    this.action,
    this.username,
    this.userId,
    this.auditableType,
    this.auditableId,
  });

  /// 
  int id;

  /// 
  String createdAt;

  /// 
  String requestUuid;

  /// 
  String remoteAddress;

  /// 
  String comment;

  /// 
  int version;

  List<AuditLogChange> auditedChanges;

  /// 
  String action;

  /// 
  String username;

  /// 
  int userId;

  /// 
  String auditableType;

  /// 
  int auditableId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuditLog &&
     other.id == id &&
     other.createdAt == createdAt &&
     other.requestUuid == requestUuid &&
     other.remoteAddress == remoteAddress &&
     other.comment == comment &&
     other.version == version &&
     other.auditedChanges == auditedChanges &&
     other.action == action &&
     other.username == username &&
     other.userId == userId &&
     other.auditableType == auditableType &&
     other.auditableId == auditableId;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (requestUuid == null ? 0 : requestUuid.hashCode) +
    (remoteAddress == null ? 0 : remoteAddress.hashCode) +
    (comment == null ? 0 : comment.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (auditedChanges == null ? 0 : auditedChanges.hashCode) +
    (action == null ? 0 : action.hashCode) +
    (username == null ? 0 : username.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (auditableType == null ? 0 : auditableType.hashCode) +
    (auditableId == null ? 0 : auditableId.hashCode);

  @override
  String toString() => 'AuditLog[id=$id, createdAt=$createdAt, requestUuid=$requestUuid, remoteAddress=$remoteAddress, comment=$comment, version=$version, auditedChanges=$auditedChanges, action=$action, username=$username, userId=$userId, auditableType=$auditableType, auditableId=$auditableId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (createdAt != null) {
      json[r'created_at'] = createdAt;
    }
    if (requestUuid != null) {
      json[r'request_uuid'] = requestUuid;
    }
    if (remoteAddress != null) {
      json[r'remote_address'] = remoteAddress;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (auditedChanges != null) {
      json[r'audited_changes'] = auditedChanges;
    }
    if (action != null) {
      json[r'action'] = action;
    }
    if (username != null) {
      json[r'username'] = username;
    }
    if (userId != null) {
      json[r'user_id'] = userId;
    }
    if (auditableType != null) {
      json[r'auditable_type'] = auditableType;
    }
    if (auditableId != null) {
      json[r'auditable_id'] = auditableId;
    }
    return json;
  }

  /// Returns a new [AuditLog] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuditLog fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AuditLog(
        id: json[r'id'],
        createdAt: json[r'created_at'],
        requestUuid: json[r'request_uuid'],
        remoteAddress: json[r'remote_address'],
        comment: json[r'comment'],
        version: json[r'version'],
        auditedChanges: AuditLogChange.listFromJson(json[r'audited_changes']),
        action: json[r'action'],
        username: json[r'username'],
        userId: json[r'user_id'],
        auditableType: json[r'auditable_type'],
        auditableId: json[r'auditable_id'],
    );

  static List<AuditLog> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuditLog>[]
      : json.map((v) => AuditLog.fromJson(v)).toList(growable: true == growable);

  static Map<String, AuditLog> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuditLog>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AuditLog.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AuditLog-objects as value to a dart map
  static Map<String, List<AuditLog>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuditLog>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AuditLog.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

