//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Location {
  /// Returns a new [Location] instance.
  Location({
    @required this.id,
    @required this.name,
    this.maxCapacity,
    this.timezone,
  });

  int id;

  String name;

  /// Maximum capacity of a location
  int maxCapacity;

  ///  IANA timezone designations
  String timezone;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Location &&
     other.id == id &&
     other.name == name &&
     other.maxCapacity == maxCapacity &&
     other.timezone == timezone;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (maxCapacity == null ? 0 : maxCapacity.hashCode) +
    (timezone == null ? 0 : timezone.hashCode);

  @override
  String toString() => 'Location[id=$id, name=$name, maxCapacity=$maxCapacity, timezone=$timezone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'name'] = name;
    if (maxCapacity != null) {
      json[r'max_capacity'] = maxCapacity;
    }
    if (timezone != null) {
      json[r'timezone'] = timezone;
    }
    return json;
  }

  /// Returns a new [Location] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Location fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Location(
        id: json[r'id'],
        name: json[r'name'],
        maxCapacity: json[r'max_capacity'],
        timezone: json[r'timezone'],
    );

  static List<Location> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Location>[]
      : json.map((v) => Location.fromJson(v)).toList(growable: true == growable);

  static Map<String, Location> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Location>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Location.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Location-objects as value to a dart map
  static Map<String, List<Location>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Location>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Location.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

