//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PackageV1 {
  /// Returns a new [PackageV1] instance.
  PackageV1({
    required this.id,
    this.recipient,
    required this.location,
    required this.packageState,
    this.carrierName,
    this.pickedUpAt,
    required this.createdAt,
    this.image,
  });

  int id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HostV1? recipient;

  LocationV1 location;

  /// this can be one of the following states: 'processing', 'recipient_matched', 'needs_attention' or 'picked_up'
  PackageV1PackageStateEnum packageState;

  /// A carrier name that gets detected on the shipping label. i.e. USPS, Purolator, DHL, Canada Post, Royal Mail, etc... 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? carrierName;

  DateTime? pickedUpAt;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ImageV1? image;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PackageV1 &&
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
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (location.hashCode) +
    (packageState.hashCode) +
    (carrierName == null ? 0 : carrierName!.hashCode) +
    (pickedUpAt == null ? 0 : pickedUpAt!.hashCode) +
    (createdAt.hashCode) +
    (image == null ? 0 : image!.hashCode);

  @override
  String toString() => 'PackageV1[id=$id, recipient=$recipient, location=$location, packageState=$packageState, carrierName=$carrierName, pickedUpAt=$pickedUpAt, createdAt=$createdAt, image=$image]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
    if (recipient != null) {
      _json[r'recipient'] = recipient;
    }
      _json[r'location'] = location;
      _json[r'package_state'] = packageState;
    if (carrierName != null) {
      _json[r'carrier_name'] = carrierName;
    }
    if (pickedUpAt != null) {
      _json[r'picked_up_at'] = pickedUpAt!.toUtc().toIso8601String();
    }
      _json[r'created_at'] = createdAt.toUtc().toIso8601String();
    if (image != null) {
      _json[r'image'] = image;
    }
    return _json;
  }

  /// Returns a new [PackageV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PackageV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PackageV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PackageV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PackageV1(
        id: mapValueOfType<int>(json, r'id')!,
        recipient: HostV1.fromJson(json[r'recipient']),
        location: LocationV1.fromJson(json[r'location'])!,
        packageState: PackageV1PackageStateEnum.fromJson(json[r'package_state'])!,
        carrierName: mapValueOfType<String>(json, r'carrier_name'),
        pickedUpAt: mapDateTime(json, r'picked_up_at', ''),
        createdAt: mapDateTime(json, r'created_at', '')!,
        image: ImageV1.fromJson(json[r'image']),
      );
    }
    return null;
  }

  static List<PackageV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PackageV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PackageV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PackageV1> mapFromJson(dynamic json) {
    final map = <String, PackageV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PackageV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PackageV1-objects as value to a dart map
  static Map<String, List<PackageV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PackageV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PackageV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'location',
    'package_state',
    'created_at',
  };
}

/// this can be one of the following states: 'processing', 'recipient_matched', 'needs_attention' or 'picked_up'
class PackageV1PackageStateEnum {
  /// Instantiate a new enum with the provided [value].
  const PackageV1PackageStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const processing = PackageV1PackageStateEnum._(r'processing');
  static const recipientMatched = PackageV1PackageStateEnum._(r'recipient_matched');
  static const needsAttention = PackageV1PackageStateEnum._(r'needs_attention');
  static const pickedUp = PackageV1PackageStateEnum._(r'picked_up');

  /// List of all possible values in this [enum][PackageV1PackageStateEnum].
  static const values = <PackageV1PackageStateEnum>[
    processing,
    recipientMatched,
    needsAttention,
    pickedUp,
  ];

  static PackageV1PackageStateEnum? fromJson(dynamic value) => PackageV1PackageStateEnumTypeTransformer().decode(value);

  static List<PackageV1PackageStateEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PackageV1PackageStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PackageV1PackageStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PackageV1PackageStateEnum] to String,
/// and [decode] dynamic data back to [PackageV1PackageStateEnum].
class PackageV1PackageStateEnumTypeTransformer {
  factory PackageV1PackageStateEnumTypeTransformer() => _instance ??= const PackageV1PackageStateEnumTypeTransformer._();

  const PackageV1PackageStateEnumTypeTransformer._();

  String encode(PackageV1PackageStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PackageV1PackageStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PackageV1PackageStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'processing': return PackageV1PackageStateEnum.processing;
        case r'recipient_matched': return PackageV1PackageStateEnum.recipientMatched;
        case r'needs_attention': return PackageV1PackageStateEnum.needsAttention;
        case r'picked_up': return PackageV1PackageStateEnum.pickedUp;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PackageV1PackageStateEnumTypeTransformer] instance.
  static PackageV1PackageStateEnumTypeTransformer? _instance;
}


