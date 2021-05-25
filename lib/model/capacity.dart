//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Capacity {
  /// Returns a new [Capacity] instance.
  Capacity({
    this.signinsCount,
    this.invitesExpectedNextHour,
  });

  int signinsCount;

  int invitesExpectedNextHour;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Capacity &&
     other.signinsCount == signinsCount &&
     other.invitesExpectedNextHour == invitesExpectedNextHour;

  @override
  int get hashCode =>
    (signinsCount == null ? 0 : signinsCount.hashCode) +
    (invitesExpectedNextHour == null ? 0 : invitesExpectedNextHour.hashCode);

  @override
  String toString() => 'Capacity[signinsCount=$signinsCount, invitesExpectedNextHour=$invitesExpectedNextHour]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (signinsCount != null) {
      json[r'signins_count'] = signinsCount;
    }
    if (invitesExpectedNextHour != null) {
      json[r'invites_expected_next_hour'] = invitesExpectedNextHour;
    }
    return json;
  }

  /// Returns a new [Capacity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Capacity fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Capacity(
        signinsCount: json[r'signins_count'],
        invitesExpectedNextHour: json[r'invites_expected_next_hour'],
    );

  static List<Capacity> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Capacity>[]
      : json.map((v) => Capacity.fromJson(v)).toList(growable: true == growable);

  static Map<String, Capacity> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Capacity>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Capacity.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Capacity-objects as value to a dart map
  static Map<String, List<Capacity>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Capacity>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Capacity.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

