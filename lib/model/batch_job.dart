//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BatchJob {
  /// Returns a new [BatchJob] instance.
  BatchJob({
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

  String bid;

  String createdAt;

  String status;

  int totalRecords;

  String workerName;

  User user;

  int pending;

  int completed;

  int failed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchJob &&
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
    (bid == null ? 0 : bid.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (totalRecords == null ? 0 : totalRecords.hashCode) +
    (workerName == null ? 0 : workerName.hashCode) +
    (user == null ? 0 : user.hashCode) +
    (pending == null ? 0 : pending.hashCode) +
    (completed == null ? 0 : completed.hashCode) +
    (failed == null ? 0 : failed.hashCode);

  @override
  String toString() => 'BatchJob[bid=$bid, createdAt=$createdAt, status=$status, totalRecords=$totalRecords, workerName=$workerName, user=$user, pending=$pending, completed=$completed, failed=$failed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (bid != null) {
      json[r'bid'] = bid;
    }
    if (createdAt != null) {
      json[r'created_at'] = createdAt;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (totalRecords != null) {
      json[r'total_records'] = totalRecords;
    }
    if (workerName != null) {
      json[r'worker_name'] = workerName;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    if (pending != null) {
      json[r'pending'] = pending;
    }
    if (completed != null) {
      json[r'completed'] = completed;
    }
    if (failed != null) {
      json[r'failed'] = failed;
    }
    return json;
  }

  /// Returns a new [BatchJob] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BatchJob fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BatchJob(
        bid: json[r'bid'],
        createdAt: json[r'created_at'],
        status: json[r'status'],
        totalRecords: json[r'total_records'],
        workerName: json[r'worker_name'],
        user: User.fromJson(json[r'user']),
        pending: json[r'pending'],
        completed: json[r'completed'],
        failed: json[r'failed'],
    );

  static List<BatchJob> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BatchJob>[]
      : json.map((v) => BatchJob.fromJson(v)).toList(growable: true == growable);

  static Map<String, BatchJob> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BatchJob>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BatchJob.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BatchJob-objects as value to a dart map
  static Map<String, List<BatchJob>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BatchJob>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BatchJob.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

