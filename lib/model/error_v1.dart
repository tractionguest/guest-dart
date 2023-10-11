//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ErrorV1 {
  /// Returns a new [ErrorV1] instance.
  ErrorV1({
    required this.domain,
    this.attribute,
    required this.code,
    this.message,
  });

  /// The name of the model with the error, or global if it is something outside a model
  String domain;

  /// The model attribute where the error occured
  String? attribute;

  /// An error code reference for the specific error that occured
  String code;

  /// A human readable error message that can be discarded for internationalization purposes
  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorV1 &&
     other.domain == domain &&
     other.attribute == attribute &&
     other.code == code &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (attribute == null ? 0 : attribute!.hashCode) +
    (code.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'ErrorV1[domain=$domain, attribute=$attribute, code=$code, message=$message]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'domain'] = domain;
    if (attribute != null) {
      _json[r'attribute'] = attribute;
    }
      _json[r'code'] = code;
    if (message != null) {
      _json[r'message'] = message;
    }
    return _json;
  }

  /// Returns a new [ErrorV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ErrorV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ErrorV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ErrorV1(
        domain: mapValueOfType<String>(json, r'domain')!,
        attribute: mapValueOfType<String>(json, r'attribute'),
        code: mapValueOfType<String>(json, r'code')!,
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<ErrorV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ErrorV1> mapFromJson(dynamic json) {
    final map = <String, ErrorV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ErrorV1-objects as value to a dart map
  static Map<String, List<ErrorV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ErrorV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
    'code',
  };
}

