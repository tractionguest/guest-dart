//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GuestResponseV1 {
  /// Returns a new [GuestResponseV1] instance.
  GuestResponseV1({
    this.id,
    this.customFields = const [],
    this.pageType,
    this.sequence,
    this.title,
  });

  /// UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Flex fields
  List<CustomFieldV1> customFields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pageType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sequence;

  /// Page title
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GuestResponseV1 &&
     other.id == id &&
     other.customFields == customFields &&
     other.pageType == pageType &&
     other.sequence == sequence &&
     other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (customFields.hashCode) +
    (pageType == null ? 0 : pageType!.hashCode) +
    (sequence == null ? 0 : sequence!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'GuestResponseV1[id=$id, customFields=$customFields, pageType=$pageType, sequence=$sequence, title=$title]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
      _json[r'custom_fields'] = customFields;
    if (pageType != null) {
      _json[r'page_type'] = pageType;
    }
    if (sequence != null) {
      _json[r'sequence'] = sequence;
    }
    if (title != null) {
      _json[r'title'] = title;
    }
    return _json;
  }

  /// Returns a new [GuestResponseV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GuestResponseV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GuestResponseV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GuestResponseV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GuestResponseV1(
        id: mapValueOfType<String>(json, r'id'),
        customFields: CustomFieldV1.listFromJson(json[r'custom_fields']) ?? const [],
        pageType: mapValueOfType<String>(json, r'page_type'),
        sequence: mapValueOfType<int>(json, r'sequence'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<GuestResponseV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GuestResponseV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GuestResponseV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GuestResponseV1> mapFromJson(dynamic json) {
    final map = <String, GuestResponseV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GuestResponseV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GuestResponseV1-objects as value to a dart map
  static Map<String, List<GuestResponseV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GuestResponseV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GuestResponseV1.listFromJson(entry.value, growable: growable,);
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

