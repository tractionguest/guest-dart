//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SigninWatchlistV1 {
  /// Returns a new [SigninWatchlistV1] instance.
  SigninWatchlistV1({
    required this.id,
    this.internal = const [],
    this.external_ = const [],
  });

  int id;

  List<InternalWatchlistResultV1> internal;

  List<ExternalWatchlistResultV1> external_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigninWatchlistV1 &&
     other.id == id &&
     other.internal == internal &&
     other.external_ == external_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (internal.hashCode) +
    (external_.hashCode);

  @override
  String toString() => 'SigninWatchlistV1[id=$id, internal=$internal, external_=$external_]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
      _json[r'internal'] = internal;
      _json[r'external'] = external_;
    return _json;
  }

  /// Returns a new [SigninWatchlistV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SigninWatchlistV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SigninWatchlistV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SigninWatchlistV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SigninWatchlistV1(
        id: mapValueOfType<int>(json, r'id')!,
        internal: InternalWatchlistResultV1.listFromJson(json[r'internal']) ?? const [],
        external_: ExternalWatchlistResultV1.listFromJson(json[r'external']) ?? const [],
      );
    }
    return null;
  }

  static List<SigninWatchlistV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SigninWatchlistV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SigninWatchlistV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SigninWatchlistV1> mapFromJson(dynamic json) {
    final map = <String, SigninWatchlistV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SigninWatchlistV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SigninWatchlistV1-objects as value to a dart map
  static Map<String, List<SigninWatchlistV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SigninWatchlistV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SigninWatchlistV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

