part of guest_sdk.api;

class PaginatedGroupVisitsList {
  
  Pagination pagination = null;
  
  List<GroupVisit> groupVisits = [];
  PaginatedGroupVisitsList();

  @override
  String toString() {
    return 'PaginatedGroupVisitsList[pagination=$pagination, groupVisits=$groupVisits, ]';
  }

  PaginatedGroupVisitsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
    if (json['group_visits'] == null) {
      groupVisits = null;
    } else {
      groupVisits = GroupVisit.listFromJson(json['group_visits']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pagination != null)
      json['pagination'] = pagination;
    if (groupVisits != null)
      json['group_visits'] = groupVisits;
    return json;
  }

  static List<PaginatedGroupVisitsList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedGroupVisitsList>() : json.map((value) => new PaginatedGroupVisitsList.fromJson(value)).toList();
  }

  static Map<String, PaginatedGroupVisitsList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedGroupVisitsList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedGroupVisitsList.fromJson(value));
    }
    return map;
  }
}

