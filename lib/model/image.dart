//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Image {
  /// Returns a new [Image] instance.
  Image({
    this.fullSizeUrl,
  });

  String fullSizeUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Image &&
     other.fullSizeUrl == fullSizeUrl;

  @override
  int get hashCode =>
    (fullSizeUrl == null ? 0 : fullSizeUrl.hashCode);

  @override
  String toString() => 'Image[fullSizeUrl=$fullSizeUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fullSizeUrl != null) {
      json[r'full_size_url'] = fullSizeUrl;
    }
    return json;
  }

  /// Returns a new [Image] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Image fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Image(
        fullSizeUrl: json[r'full_size_url'],
    );

  static List<Image> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Image>[]
      : json.map((v) => Image.fromJson(v)).toList(growable: true == growable);

  static Map<String, Image> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Image>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Image.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Image-objects as value to a dart map
  static Map<String, List<Image>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Image>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Image.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

