//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InviteWatchlist {
  /// Returns a new [InviteWatchlist] instance.
  InviteWatchlist({
    @required this.id,
    this.internal = const [],
    this.external_ = const [],
    this.internalColours = const [],
    this.externalColours = const [],
  });

  int id;

  List<InternalWatchlistResult> internal;

  List<ExternalWatchlistResult> external_;

  /// Deprecated
  List<String> internalColours;

  /// Deprecated
  List<String> externalColours;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteWatchlist &&
     other.id == id &&
     other.internal == internal &&
     other.external_ == external_ &&
     other.internalColours == internalColours &&
     other.externalColours == externalColours;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (internal == null ? 0 : internal.hashCode) +
    (external_ == null ? 0 : external_.hashCode) +
    (internalColours == null ? 0 : internalColours.hashCode) +
    (externalColours == null ? 0 : externalColours.hashCode);

  @override
  String toString() => 'InviteWatchlist[id=$id, internal=$internal, external_=$external_, internalColours=$internalColours, externalColours=$externalColours]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (internal != null) {
      json[r'internal'] = internal;
    }
    if (external_ != null) {
      json[r'external'] = external_;
    }
    if (internalColours != null) {
      json[r'internal_colours'] = internalColours;
    }
    if (externalColours != null) {
      json[r'external_colours'] = externalColours;
    }
    return json;
  }

  /// Returns a new [InviteWatchlist] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InviteWatchlist fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InviteWatchlist(
        id: json[r'id'],
        internal: InternalWatchlistResult.listFromJson(json[r'internal']),
        external_: ExternalWatchlistResult.listFromJson(json[r'external']),
        internalColours: json[r'internal_colours'] == null
          ? null
          : (json[r'internal_colours'] as List).cast<String>(),
        externalColours: json[r'external_colours'] == null
          ? null
          : (json[r'external_colours'] as List).cast<String>(),
    );

  static List<InviteWatchlist> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InviteWatchlist>[]
      : json.map((v) => InviteWatchlist.fromJson(v)).toList(growable: true == growable);

  static Map<String, InviteWatchlist> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InviteWatchlist>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InviteWatchlist.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InviteWatchlist-objects as value to a dart map
  static Map<String, List<InviteWatchlist>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InviteWatchlist>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InviteWatchlist.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

