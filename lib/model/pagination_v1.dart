//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginationV1 {
  /// Returns a new [PaginationV1] instance.
  PaginationV1({
    this.totalRecords,
    this.currentOffset,
    this.nextOffset,
    this.lastId,
    this.limit,
  });

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
  int? currentOffset;

  int? nextOffset;

  /// The last ID rendered, if the request included the 'after_id' param.
  int? lastId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginationV1 &&
     other.totalRecords == totalRecords &&
     other.currentOffset == currentOffset &&
     other.nextOffset == nextOffset &&
     other.lastId == lastId &&
     other.limit == limit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalRecords == null ? 0 : totalRecords!.hashCode) +
    (currentOffset == null ? 0 : currentOffset!.hashCode) +
    (nextOffset == null ? 0 : nextOffset!.hashCode) +
    (lastId == null ? 0 : lastId!.hashCode) +
    (limit == null ? 0 : limit!.hashCode);

  @override
  String toString() => 'PaginationV1[totalRecords=$totalRecords, currentOffset=$currentOffset, nextOffset=$nextOffset, lastId=$lastId, limit=$limit]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (totalRecords != null) {
      _json[r'total_records'] = totalRecords;
    }
    if (currentOffset != null) {
      _json[r'current_offset'] = currentOffset;
    }
    if (nextOffset != null) {
      _json[r'next_offset'] = nextOffset;
    }
    if (lastId != null) {
      _json[r'last_id'] = lastId;
    }
    if (limit != null) {
      _json[r'limit'] = limit;
    }
    return _json;
  }

  /// Returns a new [PaginationV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginationV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginationV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginationV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginationV1(
        totalRecords: mapValueOfType<int>(json, r'total_records'),
        currentOffset: mapValueOfType<int>(json, r'current_offset'),
        nextOffset: mapValueOfType<int>(json, r'next_offset'),
        lastId: mapValueOfType<int>(json, r'last_id'),
        limit: mapValueOfType<int>(json, r'limit'),
      );
    }
    return null;
  }

  static List<PaginationV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginationV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginationV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginationV1> mapFromJson(dynamic json) {
    final map = <String, PaginationV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginationV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginationV1-objects as value to a dart map
  static Map<String, List<PaginationV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginationV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginationV1.listFromJson(entry.value, growable: growable,);
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

