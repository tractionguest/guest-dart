part of guest_sdk.api;

class PackageCreateParamsV1 {
  /* Base64 encoded image on which to perform processing */
  String base64Image = null;
  /* Location id for where the package was delivered */
  int locationId = null;
  PackageCreateParamsV1();

  @override
  String toString() {
    return 'PackageCreateParamsV1[base64Image=$base64Image, locationId=$locationId, ]';
  }

  PackageCreateParamsV1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['base64_image'] == null) {
      base64Image = null;
    } else {
          base64Image = json['base64_image'];
    }
    if (json['location_id'] == null) {
      locationId = null;
    } else {
          locationId = json['location_id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (base64Image != null)
      json['base64_image'] = base64Image;
    if (locationId != null)
      json['location_id'] = locationId;
    return json;
  }

  static List<PackageCreateParamsV1> listFromJson(List<dynamic> json) {
    return json == null ? new List<PackageCreateParamsV1>() : json.map((value) => new PackageCreateParamsV1.fromJson(value)).toList();
  }

  static Map<String, PackageCreateParamsV1> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PackageCreateParamsV1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PackageCreateParamsV1.fromJson(value));
    }
    return map;
  }
}

