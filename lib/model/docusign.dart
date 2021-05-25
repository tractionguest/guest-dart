//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Docusign {
  /// Returns a new [Docusign] instance.
  Docusign({
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
  String templateId;

  /// 
  String integration;

  /// 
  String ndaStatus;

  /// 
  DateTime ndaSignedDate;

  /// 
  String envelopeId;

  /// 
  String sequence;

  /// 
  String docusignId;

  /// 
  String docusignName;

  /// 
  String title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Docusign &&
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
    (templateId == null ? 0 : templateId.hashCode) +
    (integration == null ? 0 : integration.hashCode) +
    (ndaStatus == null ? 0 : ndaStatus.hashCode) +
    (ndaSignedDate == null ? 0 : ndaSignedDate.hashCode) +
    (envelopeId == null ? 0 : envelopeId.hashCode) +
    (sequence == null ? 0 : sequence.hashCode) +
    (docusignId == null ? 0 : docusignId.hashCode) +
    (docusignName == null ? 0 : docusignName.hashCode) +
    (title == null ? 0 : title.hashCode);

  @override
  String toString() => 'Docusign[templateId=$templateId, integration=$integration, ndaStatus=$ndaStatus, ndaSignedDate=$ndaSignedDate, envelopeId=$envelopeId, sequence=$sequence, docusignId=$docusignId, docusignName=$docusignName, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (templateId != null) {
      json[r'template_id'] = templateId;
    }
    if (integration != null) {
      json[r'integration'] = integration;
    }
    if (ndaStatus != null) {
      json[r'nda_status'] = ndaStatus;
    }
    if (ndaSignedDate != null) {
      json[r'nda_signed_date'] = ndaSignedDate.toUtc().toIso8601String();
    }
    if (envelopeId != null) {
      json[r'envelope_id'] = envelopeId;
    }
    if (sequence != null) {
      json[r'sequence'] = sequence;
    }
    if (docusignId != null) {
      json[r'docusign_id'] = docusignId;
    }
    if (docusignName != null) {
      json[r'docusign_name'] = docusignName;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    return json;
  }

  /// Returns a new [Docusign] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Docusign fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Docusign(
        templateId: json[r'template_id'],
        integration: json[r'integration'],
        ndaStatus: json[r'nda_status'],
        ndaSignedDate: json[r'nda_signed_date'] == null
          ? null
          : DateTime.parse(json[r'nda_signed_date']),
        envelopeId: json[r'envelope_id'],
        sequence: json[r'sequence'],
        docusignId: json[r'docusign_id'],
        docusignName: json[r'docusign_name'],
        title: json[r'title'],
    );

  static List<Docusign> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Docusign>[]
      : json.map((v) => Docusign.fromJson(v)).toList(growable: true == growable);

  static Map<String, Docusign> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Docusign>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Docusign.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Docusign-objects as value to a dart map
  static Map<String, List<Docusign>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Docusign>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Docusign.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

