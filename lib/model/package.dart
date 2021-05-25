//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Package {
  /// Returns a new [Package] instance.
  Package({
    @required this.id,
    this.recipient,
    @required this.location,
    @required this.packageState,
    this.carrierName,
    this.pickedUpAt,
    @required this.createdAt,
    this.image,
  });

  int id;

  Host recipient;

  Location location;

  /// this can be one of the following states: 'processing', 'recipient_matched', 'needs_attention' or 'picked_up'
  PackagePackageStateEnum packageState;

  /// A carrier name that gets detected on the shipping label. i.e. USPS, Purolator, DHL, Canada Post, Royal Mail, etc... 
  String carrierName;

  DateTime pickedUpAt;

  DateTime createdAt;

  Image image;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Package &&
     other.id == id &&
     other.recipient == recipient &&
     other.location == location &&
     other.packageState == packageState &&
     other.carrierName == carrierName &&
     other.pickedUpAt == pickedUpAt &&
     other.createdAt == createdAt &&
     other.image == image;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (location == null ? 0 : location.hashCode) +
    (packageState == null ? 0 : packageState.hashCode) +
    (carrierName == null ? 0 : carrierName.hashCode) +
    (pickedUpAt == null ? 0 : pickedUpAt.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (image == null ? 0 : image.hashCode);

  @override
  String toString() => 'Package[id=$id, recipient=$recipient, location=$location, packageState=$packageState, carrierName=$carrierName, pickedUpAt=$pickedUpAt, createdAt=$createdAt, image=$image]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
      json[r'location'] = location;
      json[r'package_state'] = packageState;
    if (carrierName != null) {
      json[r'carrier_name'] = carrierName;
    }
    if (pickedUpAt != null) {
      json[r'picked_up_at'] = pickedUpAt.toUtc().toIso8601String();
    }
      json[r'created_at'] = createdAt.toUtc().toIso8601String();
    if (image != null) {
      json[r'image'] = image;
    }
    return json;
  }

  /// Returns a new [Package] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Package fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Package(
        id: json[r'id'],
        recipient: Host.fromJson(json[r'recipient']),
        location: Location.fromJson(json[r'location']),
        packageState: PackagePackageStateEnum.fromJson(json[r'package_state']),
        carrierName: json[r'carrier_name'],
        pickedUpAt: json[r'picked_up_at'] == null
          ? null
          : DateTime.parse(json[r'picked_up_at']),
        createdAt: json[r'created_at'] == null
          ? null
          : DateTime.parse(json[r'created_at']),
        image: Image.fromJson(json[r'image']),
    );

  static List<Package> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Package>[]
      : json.map((v) => Package.fromJson(v)).toList(growable: true == growable);

  static Map<String, Package> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Package>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Package.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Package-objects as value to a dart map
  static Map<String, List<Package>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Package>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Package.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// this can be one of the following states: 'processing', 'recipient_matched', 'needs_attention' or 'picked_up'
class PackagePackageStateEnum {
  /// Instantiate a new enum with the provided [value].
  const PackagePackageStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const processing = PackagePackageStateEnum._(r'processing');
  static const recipientMatched = PackagePackageStateEnum._(r'recipient_matched');
  static const needsAttention = PackagePackageStateEnum._(r'needs_attention');
  static const pickedUp = PackagePackageStateEnum._(r'picked_up');

  /// List of all possible values in this [enum][PackagePackageStateEnum].
  static const values = <PackagePackageStateEnum>[
    processing,
    recipientMatched,
    needsAttention,
    pickedUp,
  ];

  static PackagePackageStateEnum fromJson(dynamic value) =>
    PackagePackageStateEnumTypeTransformer().decode(value);

  static List<PackagePackageStateEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PackagePackageStateEnum>[]
      : json
          .map((value) => PackagePackageStateEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [PackagePackageStateEnum] to String,
/// and [decode] dynamic data back to [PackagePackageStateEnum].
class PackagePackageStateEnumTypeTransformer {
  const PackagePackageStateEnumTypeTransformer._();

  factory PackagePackageStateEnumTypeTransformer() => _instance ??= PackagePackageStateEnumTypeTransformer._();

  String encode(PackagePackageStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PackagePackageStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PackagePackageStateEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'processing': return PackagePackageStateEnum.processing;
      case r'recipient_matched': return PackagePackageStateEnum.recipientMatched;
      case r'needs_attention': return PackagePackageStateEnum.needsAttention;
      case r'picked_up': return PackagePackageStateEnum.pickedUp;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PackagePackageStateEnumTypeTransformer] instance.
  static PackagePackageStateEnumTypeTransformer _instance;
}

