//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Pagination {
  /// Returns a new [Pagination] instance.
  Pagination({
    this.totalRecords,
    this.currentOffset,
    this.nextOffset,
    this.lastId,
    this.limit,
  });

  int totalRecords;

  int currentOffset;

  int nextOffset;

  /// The last ID rendered, if the request included the 'after_id' param.
  int lastId;

  int limit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pagination &&
     other.totalRecords == totalRecords &&
     other.currentOffset == currentOffset &&
     other.nextOffset == nextOffset &&
     other.lastId == lastId &&
     other.limit == limit;

  @override
  int get hashCode =>
    (totalRecords == null ? 0 : totalRecords.hashCode) +
    (currentOffset == null ? 0 : currentOffset.hashCode) +
    (nextOffset == null ? 0 : nextOffset.hashCode) +
    (lastId == null ? 0 : lastId.hashCode) +
    (limit == null ? 0 : limit.hashCode);

  @override
  String toString() => 'Pagination[totalRecords=$totalRecords, currentOffset=$currentOffset, nextOffset=$nextOffset, lastId=$lastId, limit=$limit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (totalRecords != null) {
      json[r'total_records'] = totalRecords;
    }
    if (currentOffset != null) {
      json[r'current_offset'] = currentOffset;
    }
    if (nextOffset != null) {
      json[r'next_offset'] = nextOffset;
    }
    if (lastId != null) {
      json[r'last_id'] = lastId;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    return json;
  }

  /// Returns a new [Pagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Pagination fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Pagination(
        totalRecords: json[r'total_records'],
        currentOffset: json[r'current_offset'],
        nextOffset: json[r'next_offset'],
        lastId: json[r'last_id'],
        limit: json[r'limit'],
    );

  static List<Pagination> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Pagination>[]
      : json.map((v) => Pagination.fromJson(v)).toList(growable: true == growable);

  static Map<String, Pagination> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Pagination>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Pagination.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Pagination-objects as value to a dart map
  static Map<String, List<Pagination>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Pagination>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Pagination.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

