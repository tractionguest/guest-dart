//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CapacityForecast {
  /// Returns a new [CapacityForecast] instance.
  CapacityForecast({
    this.invitesByHour = const [],
  });

  List<CapacityByHourResponse> invitesByHour;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CapacityForecast &&
     other.invitesByHour == invitesByHour;

  @override
  int get hashCode =>
    (invitesByHour == null ? 0 : invitesByHour.hashCode);

  @override
  String toString() => 'CapacityForecast[invitesByHour=$invitesByHour]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (invitesByHour != null) {
      json[r'invites_by_hour'] = invitesByHour;
    }
    return json;
  }

  /// Returns a new [CapacityForecast] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CapacityForecast fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CapacityForecast(
        invitesByHour: CapacityByHourResponse.listFromJson(json[r'invites_by_hour']),
    );

  static List<CapacityForecast> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CapacityForecast>[]
      : json.map((v) => CapacityForecast.fromJson(v)).toList(growable: true == growable);

  static Map<String, CapacityForecast> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CapacityForecast>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CapacityForecast.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CapacityForecast-objects as value to a dart map
  static Map<String, List<CapacityForecast>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CapacityForecast>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CapacityForecast.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

