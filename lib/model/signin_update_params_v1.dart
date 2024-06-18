//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SigninUpdateParamsV1 {
  /// Returns a new [SigninUpdateParamsV1] instance.
  SigninUpdateParamsV1({
    this.isSignedOut,
    this.isAcknowledged,
    this.isAccountedFor,
  });

  /// Used to sign out the `Signin`, can only be set to `true`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSignedOut;

  /// Used to acknowledge the `Signin`, can only be set to `true`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAcknowledged;

  /// Used when keeping track of people in emergency situations
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAccountedFor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigninUpdateParamsV1 &&
     other.isSignedOut == isSignedOut &&
     other.isAcknowledged == isAcknowledged &&
     other.isAccountedFor == isAccountedFor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isSignedOut == null ? 0 : isSignedOut!.hashCode) +
    (isAcknowledged == null ? 0 : isAcknowledged!.hashCode) +
    (isAccountedFor == null ? 0 : isAccountedFor!.hashCode);

  @override
  String toString() => 'SigninUpdateParamsV1[isSignedOut=$isSignedOut, isAcknowledged=$isAcknowledged, isAccountedFor=$isAccountedFor]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (isSignedOut != null) {
      _json[r'is_signed_out'] = isSignedOut;
    }
    if (isAcknowledged != null) {
      _json[r'is_acknowledged'] = isAcknowledged;
    }
    if (isAccountedFor != null) {
      _json[r'is_accounted_for'] = isAccountedFor;
    }
    return _json;
  }

  /// Returns a new [SigninUpdateParamsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SigninUpdateParamsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SigninUpdateParamsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SigninUpdateParamsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SigninUpdateParamsV1(
        isSignedOut: mapValueOfType<bool>(json, r'is_signed_out'),
        isAcknowledged: mapValueOfType<bool>(json, r'is_acknowledged'),
        isAccountedFor: mapValueOfType<bool>(json, r'is_accounted_for'),
      );
    }
    return null;
  }

  static List<SigninUpdateParamsV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SigninUpdateParamsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SigninUpdateParamsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SigninUpdateParamsV1> mapFromJson(dynamic json) {
    final map = <String, SigninUpdateParamsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SigninUpdateParamsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SigninUpdateParamsV1-objects as value to a dart map
  static Map<String, List<SigninUpdateParamsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SigninUpdateParamsV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SigninUpdateParamsV1.listFromJson(entry.value, growable: growable,);
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

