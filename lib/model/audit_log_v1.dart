//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuditLogV1 {
  /// Returns a new [AuditLogV1] instance.
  AuditLogV1({
    required this.id,
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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestUuid;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remoteAddress;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  List<AuditLogChangeV1> auditedChanges;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? auditableType;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? auditableId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuditLogV1 &&
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
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (requestUuid == null ? 0 : requestUuid!.hashCode) +
    (remoteAddress == null ? 0 : remoteAddress!.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (auditedChanges.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (auditableType == null ? 0 : auditableType!.hashCode) +
    (auditableId == null ? 0 : auditableId!.hashCode);

  @override
  String toString() => 'AuditLogV1[id=$id, createdAt=$createdAt, requestUuid=$requestUuid, remoteAddress=$remoteAddress, comment=$comment, version=$version, auditedChanges=$auditedChanges, action=$action, username=$username, userId=$userId, auditableType=$auditableType, auditableId=$auditableId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
    if (createdAt != null) {
      _json[r'created_at'] = createdAt;
    }
    if (requestUuid != null) {
      _json[r'request_uuid'] = requestUuid;
    }
    if (remoteAddress != null) {
      _json[r'remote_address'] = remoteAddress;
    }
    if (comment != null) {
      _json[r'comment'] = comment;
    }
    if (version != null) {
      _json[r'version'] = version;
    }
      _json[r'audited_changes'] = auditedChanges;
    if (action != null) {
      _json[r'action'] = action;
    }
    if (username != null) {
      _json[r'username'] = username;
    }
    if (userId != null) {
      _json[r'user_id'] = userId;
    }
    if (auditableType != null) {
      _json[r'auditable_type'] = auditableType;
    }
    if (auditableId != null) {
      _json[r'auditable_id'] = auditableId;
    }
    return _json;
  }

  /// Returns a new [AuditLogV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditLogV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuditLogV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuditLogV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditLogV1(
        id: mapValueOfType<int>(json, r'id')!,
        createdAt: mapValueOfType<String>(json, r'created_at'),
        requestUuid: mapValueOfType<String>(json, r'request_uuid'),
        remoteAddress: mapValueOfType<String>(json, r'remote_address'),
        comment: mapValueOfType<String>(json, r'comment'),
        version: mapValueOfType<int>(json, r'version'),
        auditedChanges: AuditLogChangeV1.listFromJson(json[r'audited_changes']) ?? const [],
        action: mapValueOfType<String>(json, r'action'),
        username: mapValueOfType<String>(json, r'username'),
        userId: mapValueOfType<int>(json, r'user_id'),
        auditableType: mapValueOfType<String>(json, r'auditable_type'),
        auditableId: mapValueOfType<int>(json, r'auditable_id'),
      );
    }
    return null;
  }

  static List<AuditLogV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditLogV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditLogV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditLogV1> mapFromJson(dynamic json) {
    final map = <String, AuditLogV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditLogV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditLogV1-objects as value to a dart map
  static Map<String, List<AuditLogV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuditLogV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditLogV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

