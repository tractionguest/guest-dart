part of guest_sdk.api;

class ImageV1 {
  
  String fullSizeUrl = null;
  ImageV1();

  @override
  String toString() {
    return 'ImageV1[fullSizeUrl=$fullSizeUrl, ]';
  }

  ImageV1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['full_size_url'] == null) {
      fullSizeUrl = null;
    } else {
          fullSizeUrl = json['full_size_url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fullSizeUrl != null)
      json['full_size_url'] = fullSizeUrl;
    return json;
  }

  static List<ImageV1> listFromJson(List<dynamic> json) {
    return json == null ? new List<ImageV1>() : json.map((value) => new ImageV1.fromJson(value)).toList();
  }

  static Map<String, ImageV1> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ImageV1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ImageV1.fromJson(value));
    }
    return map;
  }
}

