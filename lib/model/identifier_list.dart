part of guest_sdk.api;

class IdentifierList {
  
  List<String> ids = [];
  IdentifierList();

  @override
  String toString() {
    return 'IdentifierList[ids=$ids, ]';
  }

  IdentifierList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ids'] == null) {
      ids = null;
    } else {
      ids = (json['ids'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ids != null)
      json['ids'] = ids;
    return json;
  }

  static List<IdentifierList> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdentifierList>() : json.map((value) => new IdentifierList.fromJson(value)).toList();
  }

  static Map<String, IdentifierList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, IdentifierList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new IdentifierList.fromJson(value));
    }
    return map;
  }
}

