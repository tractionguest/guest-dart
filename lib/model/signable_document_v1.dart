//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SignableDocumentV1 {
  /// Returns a new [SignableDocumentV1] instance.
  SignableDocumentV1({
    this.simpleSignatures = const [],
    this.docusigns = const [],
  });

  List<SimpleSignatureV1> simpleSignatures;

  List<DocusignV1> docusigns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignableDocumentV1 &&
     other.simpleSignatures == simpleSignatures &&
     other.docusigns == docusigns;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (simpleSignatures.hashCode) +
    (docusigns.hashCode);

  @override
  String toString() => 'SignableDocumentV1[simpleSignatures=$simpleSignatures, docusigns=$docusigns]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'simple_signatures'] = simpleSignatures;
      _json[r'docusigns'] = docusigns;
    return _json;
  }

  /// Returns a new [SignableDocumentV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignableDocumentV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SignableDocumentV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SignableDocumentV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SignableDocumentV1(
        simpleSignatures: SimpleSignatureV1.listFromJson(json[r'simple_signatures']) ?? const [],
        docusigns: DocusignV1.listFromJson(json[r'docusigns']) ?? const [],
      );
    }
    return null;
  }

  static List<SignableDocumentV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignableDocumentV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignableDocumentV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignableDocumentV1> mapFromJson(dynamic json) {
    final map = <String, SignableDocumentV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignableDocumentV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignableDocumentV1-objects as value to a dart map
  static Map<String, List<SignableDocumentV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignableDocumentV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignableDocumentV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

