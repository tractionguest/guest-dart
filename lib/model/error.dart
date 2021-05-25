//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Error {
  /// Returns a new [Error] instance.
  Error({
    @required this.domain,
    this.attribute,
    @required this.code,
    this.message,
  });

  /// The name of the model with the error, or global if it is something outside a model
  String domain;

  /// The model attribute where the error occured
  String attribute;

  /// An error code reference for the specific error that occured
  String code;

  /// A human readable error message that can be discarded for internationalization purposes
  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Error &&
     other.domain == domain &&
     other.attribute == attribute &&
     other.code == code &&
     other.message == message;

  @override
  int get hashCode =>
    (domain == null ? 0 : domain.hashCode) +
    (attribute == null ? 0 : attribute.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'Error[domain=$domain, attribute=$attribute, code=$code, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = domain;
    if (attribute != null) {
      json[r'attribute'] = attribute;
    }
      json[r'code'] = code;
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  /// Returns a new [Error] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Error fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Error(
        domain: json[r'domain'],
        attribute: json[r'attribute'],
        code: json[r'code'],
        message: json[r'message'],
    );

  static List<Error> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Error>[]
      : json.map((v) => Error.fromJson(v)).toList(growable: true == growable);

  static Map<String, Error> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Error>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Error.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Error-objects as value to a dart map
  static Map<String, List<Error>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Error>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Error.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

