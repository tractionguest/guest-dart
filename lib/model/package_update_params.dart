//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PackageUpdateParams {
  /// Returns a new [PackageUpdateParams] instance.
  PackageUpdateParams({
    this.pickedUp,
    this.carrierName,
    this.recipientId,
  });

  /// changes the package_state to picked up and assigns non null value to picked_up_at
  bool pickedUp;

  /// change/update the package's carrier/courier information
  String carrierName;

  /// id of the Host for which you want to send notifications to regarding their package
  int recipientId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PackageUpdateParams &&
     other.pickedUp == pickedUp &&
     other.carrierName == carrierName &&
     other.recipientId == recipientId;

  @override
  int get hashCode =>
    (pickedUp == null ? 0 : pickedUp.hashCode) +
    (carrierName == null ? 0 : carrierName.hashCode) +
    (recipientId == null ? 0 : recipientId.hashCode);

  @override
  String toString() => 'PackageUpdateParams[pickedUp=$pickedUp, carrierName=$carrierName, recipientId=$recipientId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (pickedUp != null) {
      json[r'picked_up'] = pickedUp;
    }
    if (carrierName != null) {
      json[r'carrier_name'] = carrierName;
    }
    if (recipientId != null) {
      json[r'recipient_id'] = recipientId;
    }
    return json;
  }

  /// Returns a new [PackageUpdateParams] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PackageUpdateParams fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PackageUpdateParams(
        pickedUp: json[r'picked_up'],
        carrierName: json[r'carrier_name'],
        recipientId: json[r'recipient_id'],
    );

  static List<PackageUpdateParams> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PackageUpdateParams>[]
      : json.map((v) => PackageUpdateParams.fromJson(v)).toList(growable: true == growable);

  static Map<String, PackageUpdateParams> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PackageUpdateParams>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PackageUpdateParams.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PackageUpdateParams-objects as value to a dart map
  static Map<String, List<PackageUpdateParams>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PackageUpdateParams>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PackageUpdateParams.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

