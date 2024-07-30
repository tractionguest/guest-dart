//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImageV1 {
  /// Returns a new [ImageV1] instance.
  ImageV1({
    this.fullSizeUrl,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullSizeUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageV1 &&
     other.fullSizeUrl == fullSizeUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fullSizeUrl == null ? 0 : fullSizeUrl!.hashCode);

  @override
  String toString() => 'ImageV1[fullSizeUrl=$fullSizeUrl]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (fullSizeUrl != null) {
      _json[r'full_size_url'] = fullSizeUrl;
    }
    return _json;
  }

  /// Returns a new [ImageV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageV1(
        fullSizeUrl: mapValueOfType<String>(json, r'full_size_url'),
      );
    }
    return null;
  }

  static List<ImageV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageV1> mapFromJson(dynamic json) {
    final map = <String, ImageV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageV1-objects as value to a dart map
  static Map<String, List<ImageV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageV1.listFromJson(entry.value, growable: growable,);
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

