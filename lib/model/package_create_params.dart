//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PackageCreateParams {
  /// Returns a new [PackageCreateParams] instance.
  PackageCreateParams({
    @required this.base64Image,
    @required this.locationId,
  });

  /// Base64 encoded image on which to perform processing
  String base64Image;

  /// Location id for where the package was delivered
  int locationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PackageCreateParams &&
     other.base64Image == base64Image &&
     other.locationId == locationId;

  @override
  int get hashCode =>
    (base64Image == null ? 0 : base64Image.hashCode) +
    (locationId == null ? 0 : locationId.hashCode);

  @override
  String toString() => 'PackageCreateParams[base64Image=$base64Image, locationId=$locationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'base64_image'] = base64Image;
      json[r'location_id'] = locationId;
    return json;
  }

  /// Returns a new [PackageCreateParams] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PackageCreateParams fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PackageCreateParams(
        base64Image: json[r'base64_image'],
        locationId: json[r'location_id'],
    );

  static List<PackageCreateParams> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PackageCreateParams>[]
      : json.map((v) => PackageCreateParams.fromJson(v)).toList(growable: true == growable);

  static Map<String, PackageCreateParams> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PackageCreateParams>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PackageCreateParams.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PackageCreateParams-objects as value to a dart map
  static Map<String, List<PackageCreateParams>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PackageCreateParams>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PackageCreateParams.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

