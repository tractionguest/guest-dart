//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WatchlistSearch {
  /// Returns a new [WatchlistSearch] instance.
  WatchlistSearch({
    this.name,
    this.company,
    this.city,
    this.country,
    this.state,
  });

  String name;

  String company;

  String city;

  String country;

  String state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WatchlistSearch &&
     other.name == name &&
     other.company == company &&
     other.city == city &&
     other.country == country &&
     other.state == state;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (city == null ? 0 : city.hashCode) +
    (country == null ? 0 : country.hashCode) +
    (state == null ? 0 : state.hashCode);

  @override
  String toString() => 'WatchlistSearch[name=$name, company=$company, city=$city, country=$country, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (company != null) {
      json[r'company'] = company;
    }
    if (city != null) {
      json[r'city'] = city;
    }
    if (country != null) {
      json[r'country'] = country;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    return json;
  }

  /// Returns a new [WatchlistSearch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WatchlistSearch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WatchlistSearch(
        name: json[r'name'],
        company: json[r'company'],
        city: json[r'city'],
        country: json[r'country'],
        state: json[r'state'],
    );

  static List<WatchlistSearch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WatchlistSearch>[]
      : json.map((v) => WatchlistSearch.fromJson(v)).toList(growable: true == growable);

  static Map<String, WatchlistSearch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WatchlistSearch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WatchlistSearch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WatchlistSearch-objects as value to a dart map
  static Map<String, List<WatchlistSearch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WatchlistSearch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WatchlistSearch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

