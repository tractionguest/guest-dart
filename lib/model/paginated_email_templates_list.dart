part of guest_sdk.api;

class PaginatedEmailTemplatesList {
  
  Object pagination = null;
  
  List<Object> emailTemplates = [];
  PaginatedEmailTemplatesList();

  @override
  String toString() {
    return 'PaginatedEmailTemplatesList[pagination=$pagination, emailTemplates=$emailTemplates, ]';
  }

  PaginatedEmailTemplatesList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Object.fromJson(json['pagination']);
    }
    if (json['email_templates'] == null) {
      emailTemplates = null;
    } else {
      emailTemplates = Object.listFromJson(json['email_templates']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pagination != null)
      json['pagination'] = pagination;
    if (emailTemplates != null)
      json['email_templates'] = emailTemplates;
    return json;
  }

  static List<PaginatedEmailTemplatesList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedEmailTemplatesList>() : json.map((value) => new PaginatedEmailTemplatesList.fromJson(value)).toList();
  }

  static Map<String, PaginatedEmailTemplatesList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedEmailTemplatesList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedEmailTemplatesList.fromJson(value));
    }
    return map;
  }
}

