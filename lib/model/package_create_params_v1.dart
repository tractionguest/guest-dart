//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PackageCreateParamsV1 {
  /// Returns a new [PackageCreateParamsV1] instance.
  PackageCreateParamsV1({
    required this.base64Image,
    required this.locationId,
  });

  /// Base64 encoded image on which to perform processing
  String base64Image;

  /// Location id for where the package was delivered
  int locationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PackageCreateParamsV1 &&
     other.base64Image == base64Image &&
     other.locationId == locationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (base64Image.hashCode) +
    (locationId.hashCode);

  @override
  String toString() => 'PackageCreateParamsV1[base64Image=$base64Image, locationId=$locationId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'base64_image'] = base64Image;
      _json[r'location_id'] = locationId;
    return _json;
  }

  /// Returns a new [PackageCreateParamsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PackageCreateParamsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PackageCreateParamsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PackageCreateParamsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PackageCreateParamsV1(
        base64Image: mapValueOfType<String>(json, r'base64_image')!,
        locationId: mapValueOfType<int>(json, r'location_id')!,
      );
    }
    return null;
  }

  static List<PackageCreateParamsV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PackageCreateParamsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PackageCreateParamsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PackageCreateParamsV1> mapFromJson(dynamic json) {
    final map = <String, PackageCreateParamsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PackageCreateParamsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PackageCreateParamsV1-objects as value to a dart map
  static Map<String, List<PackageCreateParamsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PackageCreateParamsV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PackageCreateParamsV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'base64_image',
    'location_id',
  };
}

