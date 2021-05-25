//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InternalWatchlistResult {
  /// Returns a new [InternalWatchlistResult] instance.
  InternalWatchlistResult({
    this.id,
    this.email,
    @required this.colour,
    this.lastName,
    this.firstName,
  });

  /// 
  int id;

  /// 
  String email;

  /// 
  String colour;

  /// 
  String lastName;

  /// 
  String firstName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InternalWatchlistResult &&
     other.id == id &&
     other.email == email &&
     other.colour == colour &&
     other.lastName == lastName &&
     other.firstName == firstName;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (colour == null ? 0 : colour.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (firstName == null ? 0 : firstName.hashCode);

  @override
  String toString() => 'InternalWatchlistResult[id=$id, email=$email, colour=$colour, lastName=$lastName, firstName=$firstName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (email != null) {
      json[r'email'] = email;
    }
      json[r'colour'] = colour;
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    return json;
  }

  /// Returns a new [InternalWatchlistResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalWatchlistResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InternalWatchlistResult(
        id: json[r'id'],
        email: json[r'email'],
        colour: json[r'colour'],
        lastName: json[r'last_name'],
        firstName: json[r'first_name'],
    );

  static List<InternalWatchlistResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InternalWatchlistResult>[]
      : json.map((v) => InternalWatchlistResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, InternalWatchlistResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InternalWatchlistResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InternalWatchlistResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InternalWatchlistResult-objects as value to a dart map
  static Map<String, List<InternalWatchlistResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InternalWatchlistResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InternalWatchlistResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

