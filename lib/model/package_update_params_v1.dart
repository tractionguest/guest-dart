part of guest_sdk.api;

class PackageUpdateParamsV1 {
  /* changes the package_state to picked up and assigns non null value to picked_up_at */
  bool pickedUp = null;
  /* change/update the package's carrier/courier information */
  String carrierName = null;
  /* id of the Host for which you want to send notifications to regarding their package */
  int recipientId = null;
  PackageUpdateParamsV1();

  @override
  String toString() {
    return 'PackageUpdateParamsV1[pickedUp=$pickedUp, carrierName=$carrierName, recipientId=$recipientId, ]';
  }

  PackageUpdateParamsV1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['picked_up'] == null) {
      pickedUp = null;
    } else {
          pickedUp = json['picked_up'];
    }
    if (json['carrier_name'] == null) {
      carrierName = null;
    } else {
          carrierName = json['carrier_name'];
    }
    if (json['recipient_id'] == null) {
      recipientId = null;
    } else {
          recipientId = json['recipient_id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pickedUp != null)
      json['picked_up'] = pickedUp;
    if (carrierName != null)
      json['carrier_name'] = carrierName;
    if (recipientId != null)
      json['recipient_id'] = recipientId;
    return json;
  }

  static List<PackageUpdateParamsV1> listFromJson(List<dynamic> json) {
    return json == null ? new List<PackageUpdateParamsV1>() : json.map((value) => new PackageUpdateParamsV1.fromJson(value)).toList();
  }

  static Map<String, PackageUpdateParamsV1> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PackageUpdateParamsV1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PackageUpdateParamsV1.fromJson(value));
    }
    return map;
  }
}

