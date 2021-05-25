//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ErrorsList {
  /// Returns a new [ErrorsList] instance.
  ErrorsList({
    this.errors = const [],
  });

  List<Error> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorsList &&
     other.errors == errors;

  @override
  int get hashCode =>
    (errors == null ? 0 : errors.hashCode);

  @override
  String toString() => 'ErrorsList[errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'errors'] = errors;
    return json;
  }

  /// Returns a new [ErrorsList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ErrorsList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ErrorsList(
        errors: Error.listFromJson(json[r'errors']),
    );

  static List<ErrorsList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ErrorsList>[]
      : json.map((v) => ErrorsList.fromJson(v)).toList(growable: true == growable);

  static Map<String, ErrorsList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ErrorsList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ErrorsList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ErrorsList-objects as value to a dart map
  static Map<String, List<ErrorsList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ErrorsList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ErrorsList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

