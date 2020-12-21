part of guest_sdk.api;

class PaginatedLocationsList {
  
  List<Object> locations = [];
  
  Object pagination = null;
  PaginatedLocationsList();

  @override
  String toString() {
    return 'PaginatedLocationsList[locations=$locations, pagination=$pagination, ]';
  }

  PaginatedLocationsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['locations'] == null) {
      locations = null;
    } else {
      locations = Object.listFromJson(json['locations']);
    }
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Object.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (locations != null)
      json['locations'] = locations;
    if (pagination != null)
      json['pagination'] = pagination;
    return json;
  }

  static List<PaginatedLocationsList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedLocationsList>() : json.map((value) => new PaginatedLocationsList.fromJson(value)).toList();
  }

  static Map<String, PaginatedLocationsList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedLocationsList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedLocationsList.fromJson(value));
    }
    return map;
  }
}

