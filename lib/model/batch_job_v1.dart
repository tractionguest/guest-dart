//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BatchJobV1 {
  /// Returns a new [BatchJobV1] instance.
  BatchJobV1({
    this.bid,
    this.createdAt,
    this.status,
    this.totalRecords,
    this.workerName,
    this.user,
    this.pending,
    this.completed,
    this.failed,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalRecords;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workerName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserV1? user;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pending;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchJobV1 &&
     other.bid == bid &&
     other.createdAt == createdAt &&
     other.status == status &&
     other.totalRecords == totalRecords &&
     other.workerName == workerName &&
     other.user == user &&
     other.pending == pending &&
     other.completed == completed &&
     other.failed == failed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bid == null ? 0 : bid!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (totalRecords == null ? 0 : totalRecords!.hashCode) +
    (workerName == null ? 0 : workerName!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (pending == null ? 0 : pending!.hashCode) +
    (completed == null ? 0 : completed!.hashCode) +
    (failed == null ? 0 : failed!.hashCode);

  @override
  String toString() => 'BatchJobV1[bid=$bid, createdAt=$createdAt, status=$status, totalRecords=$totalRecords, workerName=$workerName, user=$user, pending=$pending, completed=$completed, failed=$failed]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (bid != null) {
      _json[r'bid'] = bid;
    }
    if (createdAt != null) {
      _json[r'created_at'] = createdAt;
    }
    if (status != null) {
      _json[r'status'] = status;
    }
    if (totalRecords != null) {
      _json[r'total_records'] = totalRecords;
    }
    if (workerName != null) {
      _json[r'worker_name'] = workerName;
    }
    if (user != null) {
      _json[r'user'] = user;
    }
    if (pending != null) {
      _json[r'pending'] = pending;
    }
    if (completed != null) {
      _json[r'completed'] = completed;
    }
    if (failed != null) {
      _json[r'failed'] = failed;
    }
    return _json;
  }

  /// Returns a new [BatchJobV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BatchJobV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BatchJobV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BatchJobV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BatchJobV1(
        bid: mapValueOfType<String>(json, r'bid'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        status: mapValueOfType<String>(json, r'status'),
        totalRecords: mapValueOfType<int>(json, r'total_records'),
        workerName: mapValueOfType<String>(json, r'worker_name'),
        user: UserV1.fromJson(json[r'user']),
        pending: mapValueOfType<int>(json, r'pending'),
        completed: mapValueOfType<int>(json, r'completed'),
        failed: mapValueOfType<int>(json, r'failed'),
      );
    }
    return null;
  }

  static List<BatchJobV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchJobV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchJobV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BatchJobV1> mapFromJson(dynamic json) {
    final map = <String, BatchJobV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchJobV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BatchJobV1-objects as value to a dart map
  static Map<String, List<BatchJobV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BatchJobV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchJobV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

