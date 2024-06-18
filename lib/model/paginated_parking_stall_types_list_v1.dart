//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedParkingStallTypesListV1 {
  /// Returns a new [PaginatedParkingStallTypesListV1] instance.
  PaginatedParkingStallTypesListV1({
    this.stallTypes = const [],
    required this.pagination,
  });

  List<String> stallTypes;

  PaginationV1 pagination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedParkingStallTypesListV1 &&
     other.stallTypes == stallTypes &&
     other.pagination == pagination;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stallTypes.hashCode) +
    (pagination.hashCode);

  @override
  String toString() => 'PaginatedParkingStallTypesListV1[stallTypes=$stallTypes, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'stall_types'] = stallTypes;
      _json[r'pagination'] = pagination;
    return _json;
  }

  /// Returns a new [PaginatedParkingStallTypesListV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginatedParkingStallTypesListV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginatedParkingStallTypesListV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginatedParkingStallTypesListV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginatedParkingStallTypesListV1(
        stallTypes: json[r'stall_types'] is List
            ? (json[r'stall_types'] as List).cast<String>()
            : const [],
        pagination: PaginationV1.fromJson(json[r'pagination'])!,
      );
    }
    return null;
  }

  static List<PaginatedParkingStallTypesListV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginatedParkingStallTypesListV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginatedParkingStallTypesListV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginatedParkingStallTypesListV1> mapFromJson(dynamic json) {
    final map = <String, PaginatedParkingStallTypesListV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedParkingStallTypesListV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginatedParkingStallTypesListV1-objects as value to a dart map
  static Map<String, List<PaginatedParkingStallTypesListV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginatedParkingStallTypesListV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedParkingStallTypesListV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'stall_types',
    'pagination',
  };
}

