//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedPackagesListV1 {
  /// Returns a new [PaginatedPackagesListV1] instance.
  PaginatedPackagesListV1({
    this.packages = const [],
    required this.pagination,
  });

  List<PackageV1> packages;

  PaginationV1 pagination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedPackagesListV1 &&
     other.packages == packages &&
     other.pagination == pagination;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (packages.hashCode) +
    (pagination.hashCode);

  @override
  String toString() => 'PaginatedPackagesListV1[packages=$packages, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'packages'] = packages;
      _json[r'pagination'] = pagination;
    return _json;
  }

  /// Returns a new [PaginatedPackagesListV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginatedPackagesListV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginatedPackagesListV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginatedPackagesListV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginatedPackagesListV1(
        packages: PackageV1.listFromJson(json[r'packages'])!,
        pagination: PaginationV1.fromJson(json[r'pagination'])!,
      );
    }
    return null;
  }

  static List<PaginatedPackagesListV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginatedPackagesListV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginatedPackagesListV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginatedPackagesListV1> mapFromJson(dynamic json) {
    final map = <String, PaginatedPackagesListV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedPackagesListV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginatedPackagesListV1-objects as value to a dart map
  static Map<String, List<PaginatedPackagesListV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginatedPackagesListV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedPackagesListV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'packages',
    'pagination',
  };
}

