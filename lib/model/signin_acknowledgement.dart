//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SigninAcknowledgement {
  /// Returns a new [SigninAcknowledgement] instance.
  SigninAcknowledgement({
    this.code,
    this.acknowledgedAt,
    @required this.id,
  });

  String code;

  DateTime acknowledgedAt;

  int id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigninAcknowledgement &&
     other.code == code &&
     other.acknowledgedAt == acknowledgedAt &&
     other.id == id;

  @override
  int get hashCode =>
    (code == null ? 0 : code.hashCode) +
    (acknowledgedAt == null ? 0 : acknowledgedAt.hashCode) +
    (id == null ? 0 : id.hashCode);

  @override
  String toString() => 'SigninAcknowledgement[code=$code, acknowledgedAt=$acknowledgedAt, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (acknowledgedAt != null) {
      json[r'acknowledged_at'] = acknowledgedAt.toUtc().toIso8601String();
    }
      json[r'id'] = id;
    return json;
  }

  /// Returns a new [SigninAcknowledgement] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SigninAcknowledgement fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SigninAcknowledgement(
        code: json[r'code'],
        acknowledgedAt: json[r'acknowledged_at'] == null
          ? null
          : DateTime.parse(json[r'acknowledged_at']),
        id: json[r'id'],
    );

  static List<SigninAcknowledgement> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SigninAcknowledgement>[]
      : json.map((v) => SigninAcknowledgement.fromJson(v)).toList(growable: true == growable);

  static Map<String, SigninAcknowledgement> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SigninAcknowledgement>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SigninAcknowledgement.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SigninAcknowledgement-objects as value to a dart map
  static Map<String, List<SigninAcknowledgement>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SigninAcknowledgement>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SigninAcknowledgement.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

