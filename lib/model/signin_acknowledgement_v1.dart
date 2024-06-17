//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SigninAcknowledgementV1 {
  /// Returns a new [SigninAcknowledgementV1] instance.
  SigninAcknowledgementV1({
    this.code,
    this.acknowledgedAt,
    required this.id,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? acknowledgedAt;

  int id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigninAcknowledgementV1 &&
     other.code == code &&
     other.acknowledgedAt == acknowledgedAt &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (acknowledgedAt == null ? 0 : acknowledgedAt!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'SigninAcknowledgementV1[code=$code, acknowledgedAt=$acknowledgedAt, id=$id]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (code != null) {
      _json[r'code'] = code;
    }
    if (acknowledgedAt != null) {
      _json[r'acknowledged_at'] = acknowledgedAt!.toUtc().toIso8601String();
    }
      _json[r'id'] = id;
    return _json;
  }

  /// Returns a new [SigninAcknowledgementV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SigninAcknowledgementV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SigninAcknowledgementV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SigninAcknowledgementV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SigninAcknowledgementV1(
        code: mapValueOfType<String>(json, r'code'),
        acknowledgedAt: mapDateTime(json, r'acknowledged_at', ''),
        id: mapValueOfType<int>(json, r'id')!,
      );
    }
    return null;
  }

  static List<SigninAcknowledgementV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SigninAcknowledgementV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SigninAcknowledgementV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SigninAcknowledgementV1> mapFromJson(dynamic json) {
    final map = <String, SigninAcknowledgementV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SigninAcknowledgementV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SigninAcknowledgementV1-objects as value to a dart map
  static Map<String, List<SigninAcknowledgementV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SigninAcknowledgementV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SigninAcknowledgementV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

