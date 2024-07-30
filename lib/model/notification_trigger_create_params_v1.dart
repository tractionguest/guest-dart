//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationTriggerCreateParamsV1 {
  /// Returns a new [NotificationTriggerCreateParamsV1] instance.
  NotificationTriggerCreateParamsV1({
    required this.offsetUnit,
    this.notificationGroups = const [],
    required this.emailTemplateId,
    required this.offsetOrigin,
    required this.offsetAmount,
    required this.offsetDirection,
  });

  /// Whether the offset should be calculated as `days` or `hours`
  NotificationTriggerCreateParamsV1OffsetUnitEnum offsetUnit;

  /// An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values
  List<String> notificationGroups;

  int emailTemplateId;

  /// Whether the offset should be calculated from the start, or finish of the event
  NotificationTriggerCreateParamsV1OffsetOriginEnum offsetOrigin;

  /// The amount to offset the notification from the event
  int offsetAmount;

  /// Whether the offset should be calculated for before, or after the event
  NotificationTriggerCreateParamsV1OffsetDirectionEnum offsetDirection;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationTriggerCreateParamsV1 &&
     other.offsetUnit == offsetUnit &&
     other.notificationGroups == notificationGroups &&
     other.emailTemplateId == emailTemplateId &&
     other.offsetOrigin == offsetOrigin &&
     other.offsetAmount == offsetAmount &&
     other.offsetDirection == offsetDirection;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (offsetUnit.hashCode) +
    (notificationGroups.hashCode) +
    (emailTemplateId.hashCode) +
    (offsetOrigin.hashCode) +
    (offsetAmount.hashCode) +
    (offsetDirection.hashCode);

  @override
  String toString() => 'NotificationTriggerCreateParamsV1[offsetUnit=$offsetUnit, notificationGroups=$notificationGroups, emailTemplateId=$emailTemplateId, offsetOrigin=$offsetOrigin, offsetAmount=$offsetAmount, offsetDirection=$offsetDirection]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'offset_unit'] = offsetUnit;
      _json[r'notification_groups'] = notificationGroups;
      _json[r'email_template_id'] = emailTemplateId;
      _json[r'offset_origin'] = offsetOrigin;
      _json[r'offset_amount'] = offsetAmount;
      _json[r'offset_direction'] = offsetDirection;
    return _json;
  }

  /// Returns a new [NotificationTriggerCreateParamsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationTriggerCreateParamsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationTriggerCreateParamsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationTriggerCreateParamsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationTriggerCreateParamsV1(
        offsetUnit: NotificationTriggerCreateParamsV1OffsetUnitEnum.fromJson(json[r'offset_unit'])!,
        notificationGroups: json[r'notification_groups'] is List
            ? (json[r'notification_groups'] as List).cast<String>()
            : const [],
        emailTemplateId: mapValueOfType<int>(json, r'email_template_id')!,
        offsetOrigin: NotificationTriggerCreateParamsV1OffsetOriginEnum.fromJson(json[r'offset_origin'])!,
        offsetAmount: mapValueOfType<int>(json, r'offset_amount')!,
        offsetDirection: NotificationTriggerCreateParamsV1OffsetDirectionEnum.fromJson(json[r'offset_direction'])!,
      );
    }
    return null;
  }

  static List<NotificationTriggerCreateParamsV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationTriggerCreateParamsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTriggerCreateParamsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationTriggerCreateParamsV1> mapFromJson(dynamic json) {
    final map = <String, NotificationTriggerCreateParamsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationTriggerCreateParamsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationTriggerCreateParamsV1-objects as value to a dart map
  static Map<String, List<NotificationTriggerCreateParamsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationTriggerCreateParamsV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationTriggerCreateParamsV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'offset_unit',
    'notification_groups',
    'email_template_id',
    'offset_origin',
    'offset_amount',
    'offset_direction',
  };
}

/// Whether the offset should be calculated as `days` or `hours`
class NotificationTriggerCreateParamsV1OffsetUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerCreateParamsV1OffsetUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const days = NotificationTriggerCreateParamsV1OffsetUnitEnum._(r'days');
  static const hours = NotificationTriggerCreateParamsV1OffsetUnitEnum._(r'hours');

  /// List of all possible values in this [enum][NotificationTriggerCreateParamsV1OffsetUnitEnum].
  static const values = <NotificationTriggerCreateParamsV1OffsetUnitEnum>[
    days,
    hours,
  ];

  static NotificationTriggerCreateParamsV1OffsetUnitEnum? fromJson(dynamic value) => NotificationTriggerCreateParamsV1OffsetUnitEnumTypeTransformer().decode(value);

  static List<NotificationTriggerCreateParamsV1OffsetUnitEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationTriggerCreateParamsV1OffsetUnitEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTriggerCreateParamsV1OffsetUnitEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationTriggerCreateParamsV1OffsetUnitEnum] to String,
/// and [decode] dynamic data back to [NotificationTriggerCreateParamsV1OffsetUnitEnum].
class NotificationTriggerCreateParamsV1OffsetUnitEnumTypeTransformer {
  factory NotificationTriggerCreateParamsV1OffsetUnitEnumTypeTransformer() => _instance ??= const NotificationTriggerCreateParamsV1OffsetUnitEnumTypeTransformer._();

  const NotificationTriggerCreateParamsV1OffsetUnitEnumTypeTransformer._();

  String encode(NotificationTriggerCreateParamsV1OffsetUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerCreateParamsV1OffsetUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerCreateParamsV1OffsetUnitEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'days': return NotificationTriggerCreateParamsV1OffsetUnitEnum.days;
        case r'hours': return NotificationTriggerCreateParamsV1OffsetUnitEnum.hours;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationTriggerCreateParamsV1OffsetUnitEnumTypeTransformer] instance.
  static NotificationTriggerCreateParamsV1OffsetUnitEnumTypeTransformer? _instance;
}


/// Whether the offset should be calculated from the start, or finish of the event
class NotificationTriggerCreateParamsV1OffsetOriginEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerCreateParamsV1OffsetOriginEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const START = NotificationTriggerCreateParamsV1OffsetOriginEnum._(r'START');
  static const END = NotificationTriggerCreateParamsV1OffsetOriginEnum._(r'END');

  /// List of all possible values in this [enum][NotificationTriggerCreateParamsV1OffsetOriginEnum].
  static const values = <NotificationTriggerCreateParamsV1OffsetOriginEnum>[
    START,
    END,
  ];

  static NotificationTriggerCreateParamsV1OffsetOriginEnum? fromJson(dynamic value) => NotificationTriggerCreateParamsV1OffsetOriginEnumTypeTransformer().decode(value);

  static List<NotificationTriggerCreateParamsV1OffsetOriginEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationTriggerCreateParamsV1OffsetOriginEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTriggerCreateParamsV1OffsetOriginEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationTriggerCreateParamsV1OffsetOriginEnum] to String,
/// and [decode] dynamic data back to [NotificationTriggerCreateParamsV1OffsetOriginEnum].
class NotificationTriggerCreateParamsV1OffsetOriginEnumTypeTransformer {
  factory NotificationTriggerCreateParamsV1OffsetOriginEnumTypeTransformer() => _instance ??= const NotificationTriggerCreateParamsV1OffsetOriginEnumTypeTransformer._();

  const NotificationTriggerCreateParamsV1OffsetOriginEnumTypeTransformer._();

  String encode(NotificationTriggerCreateParamsV1OffsetOriginEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerCreateParamsV1OffsetOriginEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerCreateParamsV1OffsetOriginEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'START': return NotificationTriggerCreateParamsV1OffsetOriginEnum.START;
        case r'END': return NotificationTriggerCreateParamsV1OffsetOriginEnum.END;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationTriggerCreateParamsV1OffsetOriginEnumTypeTransformer] instance.
  static NotificationTriggerCreateParamsV1OffsetOriginEnumTypeTransformer? _instance;
}


/// Whether the offset should be calculated for before, or after the event
class NotificationTriggerCreateParamsV1OffsetDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerCreateParamsV1OffsetDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BEFORE = NotificationTriggerCreateParamsV1OffsetDirectionEnum._(r'BEFORE');
  static const AFTER = NotificationTriggerCreateParamsV1OffsetDirectionEnum._(r'AFTER');

  /// List of all possible values in this [enum][NotificationTriggerCreateParamsV1OffsetDirectionEnum].
  static const values = <NotificationTriggerCreateParamsV1OffsetDirectionEnum>[
    BEFORE,
    AFTER,
  ];

  static NotificationTriggerCreateParamsV1OffsetDirectionEnum? fromJson(dynamic value) => NotificationTriggerCreateParamsV1OffsetDirectionEnumTypeTransformer().decode(value);

  static List<NotificationTriggerCreateParamsV1OffsetDirectionEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationTriggerCreateParamsV1OffsetDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTriggerCreateParamsV1OffsetDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationTriggerCreateParamsV1OffsetDirectionEnum] to String,
/// and [decode] dynamic data back to [NotificationTriggerCreateParamsV1OffsetDirectionEnum].
class NotificationTriggerCreateParamsV1OffsetDirectionEnumTypeTransformer {
  factory NotificationTriggerCreateParamsV1OffsetDirectionEnumTypeTransformer() => _instance ??= const NotificationTriggerCreateParamsV1OffsetDirectionEnumTypeTransformer._();

  const NotificationTriggerCreateParamsV1OffsetDirectionEnumTypeTransformer._();

  String encode(NotificationTriggerCreateParamsV1OffsetDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerCreateParamsV1OffsetDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerCreateParamsV1OffsetDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'BEFORE': return NotificationTriggerCreateParamsV1OffsetDirectionEnum.BEFORE;
        case r'AFTER': return NotificationTriggerCreateParamsV1OffsetDirectionEnum.AFTER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationTriggerCreateParamsV1OffsetDirectionEnumTypeTransformer] instance.
  static NotificationTriggerCreateParamsV1OffsetDirectionEnumTypeTransformer? _instance;
}


