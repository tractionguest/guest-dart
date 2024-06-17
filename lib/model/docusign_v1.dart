//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DocusignV1 {
  /// Returns a new [DocusignV1] instance.
  DocusignV1({
    this.templateId,
    this.integration,
    this.ndaStatus,
    this.ndaSignedDate,
    this.envelopeId,
    this.sequence,
    this.docusignId,
    this.docusignName,
    this.title,
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateId;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? integration;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ndaStatus;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? ndaSignedDate;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? envelopeId;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sequence;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? docusignId;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? docusignName;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocusignV1 &&
     other.templateId == templateId &&
     other.integration == integration &&
     other.ndaStatus == ndaStatus &&
     other.ndaSignedDate == ndaSignedDate &&
     other.envelopeId == envelopeId &&
     other.sequence == sequence &&
     other.docusignId == docusignId &&
     other.docusignName == docusignName &&
     other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (templateId == null ? 0 : templateId!.hashCode) +
    (integration == null ? 0 : integration!.hashCode) +
    (ndaStatus == null ? 0 : ndaStatus!.hashCode) +
    (ndaSignedDate == null ? 0 : ndaSignedDate!.hashCode) +
    (envelopeId == null ? 0 : envelopeId!.hashCode) +
    (sequence == null ? 0 : sequence!.hashCode) +
    (docusignId == null ? 0 : docusignId!.hashCode) +
    (docusignName == null ? 0 : docusignName!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'DocusignV1[templateId=$templateId, integration=$integration, ndaStatus=$ndaStatus, ndaSignedDate=$ndaSignedDate, envelopeId=$envelopeId, sequence=$sequence, docusignId=$docusignId, docusignName=$docusignName, title=$title]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (templateId != null) {
      _json[r'template_id'] = templateId;
    }
    if (integration != null) {
      _json[r'integration'] = integration;
    }
    if (ndaStatus != null) {
      _json[r'nda_status'] = ndaStatus;
    }
    if (ndaSignedDate != null) {
      _json[r'nda_signed_date'] = ndaSignedDate!.toUtc().toIso8601String();
    }
    if (envelopeId != null) {
      _json[r'envelope_id'] = envelopeId;
    }
    if (sequence != null) {
      _json[r'sequence'] = sequence;
    }
    if (docusignId != null) {
      _json[r'docusign_id'] = docusignId;
    }
    if (docusignName != null) {
      _json[r'docusign_name'] = docusignName;
    }
    if (title != null) {
      _json[r'title'] = title;
    }
    return _json;
  }

  /// Returns a new [DocusignV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocusignV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocusignV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocusignV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocusignV1(
        templateId: mapValueOfType<String>(json, r'template_id'),
        integration: mapValueOfType<String>(json, r'integration'),
        ndaStatus: mapValueOfType<String>(json, r'nda_status'),
        ndaSignedDate: mapDateTime(json, r'nda_signed_date', ''),
        envelopeId: mapValueOfType<String>(json, r'envelope_id'),
        sequence: mapValueOfType<String>(json, r'sequence'),
        docusignId: mapValueOfType<String>(json, r'docusign_id'),
        docusignName: mapValueOfType<String>(json, r'docusign_name'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<DocusignV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocusignV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocusignV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocusignV1> mapFromJson(dynamic json) {
    final map = <String, DocusignV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocusignV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocusignV1-objects as value to a dart map
  static Map<String, List<DocusignV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocusignV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocusignV1.listFromJson(entry.value, growable: growable,);
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

