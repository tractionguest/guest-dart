//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PackageUpdateParamsV1 {
  /// Returns a new [PackageUpdateParamsV1] instance.
  PackageUpdateParamsV1({
    this.pickedUp,
    this.carrierName,
    this.recipientId,
  });

  /// changes the package_state to picked up and assigns non null value to picked_up_at
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? pickedUp;

  /// change/update the package's carrier/courier information
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? carrierName;

  /// id of the Host for which you want to send notifications to regarding their package
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recipientId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PackageUpdateParamsV1 &&
     other.pickedUp == pickedUp &&
     other.carrierName == carrierName &&
     other.recipientId == recipientId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pickedUp == null ? 0 : pickedUp!.hashCode) +
    (carrierName == null ? 0 : carrierName!.hashCode) +
    (recipientId == null ? 0 : recipientId!.hashCode);

  @override
  String toString() => 'PackageUpdateParamsV1[pickedUp=$pickedUp, carrierName=$carrierName, recipientId=$recipientId]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (pickedUp != null) {
      _json[r'picked_up'] = pickedUp;
    }
    if (carrierName != null) {
      _json[r'carrier_name'] = carrierName;
    }
    if (recipientId != null) {
      _json[r'recipient_id'] = recipientId;
    }
    return _json;
  }

  /// Returns a new [PackageUpdateParamsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PackageUpdateParamsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PackageUpdateParamsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PackageUpdateParamsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PackageUpdateParamsV1(
        pickedUp: mapValueOfType<bool>(json, r'picked_up'),
        carrierName: mapValueOfType<String>(json, r'carrier_name'),
        recipientId: mapValueOfType<int>(json, r'recipient_id'),
      );
    }
    return null;
  }

  static List<PackageUpdateParamsV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PackageUpdateParamsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PackageUpdateParamsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PackageUpdateParamsV1> mapFromJson(dynamic json) {
    final map = <String, PackageUpdateParamsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PackageUpdateParamsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PackageUpdateParamsV1-objects as value to a dart map
  static Map<String, List<PackageUpdateParamsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PackageUpdateParamsV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PackageUpdateParamsV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

