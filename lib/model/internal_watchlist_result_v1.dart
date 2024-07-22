//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InternalWatchlistResultV1 {
  /// Returns a new [InternalWatchlistResultV1] instance.
  InternalWatchlistResultV1({
    this.id,
    this.email,
    required this.colour,
    this.lastName,
    this.firstName,
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// 
  String colour;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InternalWatchlistResultV1 &&
     other.id == id &&
     other.email == email &&
     other.colour == colour &&
     other.lastName == lastName &&
     other.firstName == firstName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (colour.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode);

  @override
  String toString() => 'InternalWatchlistResultV1[id=$id, email=$email, colour=$colour, lastName=$lastName, firstName=$firstName]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (id != null) {
      _json[r'id'] = id;
    }
    if (email != null) {
      _json[r'email'] = email;
    }
      _json[r'colour'] = colour;
    if (lastName != null) {
      _json[r'last_name'] = lastName;
    }
    if (firstName != null) {
      _json[r'first_name'] = firstName;
    }
    return _json;
  }

  /// Returns a new [InternalWatchlistResultV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InternalWatchlistResultV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InternalWatchlistResultV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InternalWatchlistResultV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InternalWatchlistResultV1(
        id: mapValueOfType<int>(json, r'id'),
        email: mapValueOfType<String>(json, r'email'),
        colour: mapValueOfType<String>(json, r'colour')!,
        lastName: mapValueOfType<String>(json, r'last_name'),
        firstName: mapValueOfType<String>(json, r'first_name'),
      );
    }
    return null;
  }

  static List<InternalWatchlistResultV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InternalWatchlistResultV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InternalWatchlistResultV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InternalWatchlistResultV1> mapFromJson(dynamic json) {
    final map = <String, InternalWatchlistResultV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InternalWatchlistResultV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InternalWatchlistResultV1-objects as value to a dart map
  static Map<String, List<InternalWatchlistResultV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InternalWatchlistResultV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InternalWatchlistResultV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'colour',
  };
}

