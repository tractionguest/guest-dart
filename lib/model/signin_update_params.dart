//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SigninUpdateParams {
  /// Returns a new [SigninUpdateParams] instance.
  SigninUpdateParams({
    this.isSignedOut,
    this.isAcknowledged,
    this.isAccountedFor,
  });

  /// Used to sign out the `Signin`, can only be set to `true`.
  bool isSignedOut;

  /// Used to acknowledge the `Signin`, can only be set to `true`.
  bool isAcknowledged;

  /// Used when keeping track of people in emergency situations
  bool isAccountedFor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigninUpdateParams &&
     other.isSignedOut == isSignedOut &&
     other.isAcknowledged == isAcknowledged &&
     other.isAccountedFor == isAccountedFor;

  @override
  int get hashCode =>
    (isSignedOut == null ? 0 : isSignedOut.hashCode) +
    (isAcknowledged == null ? 0 : isAcknowledged.hashCode) +
    (isAccountedFor == null ? 0 : isAccountedFor.hashCode);

  @override
  String toString() => 'SigninUpdateParams[isSignedOut=$isSignedOut, isAcknowledged=$isAcknowledged, isAccountedFor=$isAccountedFor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (isSignedOut != null) {
      json[r'is_signed_out'] = isSignedOut;
    }
    if (isAcknowledged != null) {
      json[r'is_acknowledged'] = isAcknowledged;
    }
    if (isAccountedFor != null) {
      json[r'is_accounted_for'] = isAccountedFor;
    }
    return json;
  }

  /// Returns a new [SigninUpdateParams] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SigninUpdateParams fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SigninUpdateParams(
        isSignedOut: json[r'is_signed_out'],
        isAcknowledged: json[r'is_acknowledged'],
        isAccountedFor: json[r'is_accounted_for'],
    );

  static List<SigninUpdateParams> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SigninUpdateParams>[]
      : json.map((v) => SigninUpdateParams.fromJson(v)).toList(growable: true == growable);

  static Map<String, SigninUpdateParams> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SigninUpdateParams>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SigninUpdateParams.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SigninUpdateParams-objects as value to a dart map
  static Map<String, List<SigninUpdateParams>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SigninUpdateParams>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SigninUpdateParams.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

