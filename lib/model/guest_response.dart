//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GuestResponse {
  /// Returns a new [GuestResponse] instance.
  GuestResponse({
    this.id,
    this.customFields = const [],
    this.pageType,
    this.sequence,
    this.title,
  });

  /// UUID
  String id;

  /// Flex fields
  List<CustomField> customFields;

  String pageType;

  int sequence;

  /// Page title
  String title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GuestResponse &&
     other.id == id &&
     other.customFields == customFields &&
     other.pageType == pageType &&
     other.sequence == sequence &&
     other.title == title;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (customFields == null ? 0 : customFields.hashCode) +
    (pageType == null ? 0 : pageType.hashCode) +
    (sequence == null ? 0 : sequence.hashCode) +
    (title == null ? 0 : title.hashCode);

  @override
  String toString() => 'GuestResponse[id=$id, customFields=$customFields, pageType=$pageType, sequence=$sequence, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (customFields != null) {
      json[r'custom_fields'] = customFields;
    }
    if (pageType != null) {
      json[r'page_type'] = pageType;
    }
    if (sequence != null) {
      json[r'sequence'] = sequence;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    return json;
  }

  /// Returns a new [GuestResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GuestResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GuestResponse(
        id: json[r'id'],
        customFields: CustomField.listFromJson(json[r'custom_fields']),
        pageType: json[r'page_type'],
        sequence: json[r'sequence'],
        title: json[r'title'],
    );

  static List<GuestResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GuestResponse>[]
      : json.map((v) => GuestResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, GuestResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GuestResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = GuestResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of GuestResponse-objects as value to a dart map
  static Map<String, List<GuestResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GuestResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = GuestResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

