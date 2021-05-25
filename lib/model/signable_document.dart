//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SignableDocument {
  /// Returns a new [SignableDocument] instance.
  SignableDocument({
    this.simpleSignatures = const [],
    this.docusigns = const [],
  });

  List<SimpleSignature> simpleSignatures;

  List<Docusign> docusigns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignableDocument &&
     other.simpleSignatures == simpleSignatures &&
     other.docusigns == docusigns;

  @override
  int get hashCode =>
    (simpleSignatures == null ? 0 : simpleSignatures.hashCode) +
    (docusigns == null ? 0 : docusigns.hashCode);

  @override
  String toString() => 'SignableDocument[simpleSignatures=$simpleSignatures, docusigns=$docusigns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (simpleSignatures != null) {
      json[r'simple_signatures'] = simpleSignatures;
    }
    if (docusigns != null) {
      json[r'docusigns'] = docusigns;
    }
    return json;
  }

  /// Returns a new [SignableDocument] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignableDocument fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SignableDocument(
        simpleSignatures: SimpleSignature.listFromJson(json[r'simple_signatures']),
        docusigns: Docusign.listFromJson(json[r'docusigns']),
    );

  static List<SignableDocument> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SignableDocument>[]
      : json.map((v) => SignableDocument.fromJson(v)).toList(growable: true == growable);

  static Map<String, SignableDocument> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SignableDocument>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SignableDocument.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SignableDocument-objects as value to a dart map
  static Map<String, List<SignableDocument>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SignableDocument>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SignableDocument.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

