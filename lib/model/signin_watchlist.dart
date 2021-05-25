//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SigninWatchlist {
  /// Returns a new [SigninWatchlist] instance.
  SigninWatchlist({
    @required this.id,
    this.internal = const [],
    this.external_ = const [],
  });

  int id;

  List<InternalWatchlistResult> internal;

  List<ExternalWatchlistResult> external_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigninWatchlist &&
     other.id == id &&
     other.internal == internal &&
     other.external_ == external_;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (internal == null ? 0 : internal.hashCode) +
    (external_ == null ? 0 : external_.hashCode);

  @override
  String toString() => 'SigninWatchlist[id=$id, internal=$internal, external_=$external_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (internal != null) {
      json[r'internal'] = internal;
    }
    if (external_ != null) {
      json[r'external'] = external_;
    }
    return json;
  }

  /// Returns a new [SigninWatchlist] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SigninWatchlist fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SigninWatchlist(
        id: json[r'id'],
        internal: InternalWatchlistResult.listFromJson(json[r'internal']),
        external_: ExternalWatchlistResult.listFromJson(json[r'external']),
    );

  static List<SigninWatchlist> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SigninWatchlist>[]
      : json.map((v) => SigninWatchlist.fromJson(v)).toList(growable: true == growable);

  static Map<String, SigninWatchlist> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SigninWatchlist>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SigninWatchlist.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SigninWatchlist-objects as value to a dart map
  static Map<String, List<SigninWatchlist>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SigninWatchlist>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SigninWatchlist.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

