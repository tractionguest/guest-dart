//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationTriggerV1 {
  /// Returns a new [NotificationTriggerV1] instance.
  NotificationTriggerV1({
    required this.offsetDirection,
    required this.offsetAmount,
    required this.offsetOrigin,
    required this.emailTemplateId,
    this.notificationGroups = const [],
    required this.offsetUnit,
    required this.emailTemplateName,
  });

  /// Whether the offset should be calculated for before, or after the event
  NotificationTriggerV1OffsetDirectionEnum offsetDirection;

  /// The amount to offset the notification from the event
  int offsetAmount;

  /// Whether the offset should be calculated from the start, or finish of the event
  NotificationTriggerV1OffsetOriginEnum offsetOrigin;

  int emailTemplateId;

  /// An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values
  List<String> notificationGroups;

  /// Whether the offset should be calculated as `days` or `hours`
  NotificationTriggerV1OffsetUnitEnum offsetUnit;

  /// The name of the EmailTemplate associated with the NotificationTrigger. This is only given from the server, not used as a create param.
  String emailTemplateName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationTriggerV1 &&
     other.offsetDirection == offsetDirection &&
     other.offsetAmount == offsetAmount &&
     other.offsetOrigin == offsetOrigin &&
     other.emailTemplateId == emailTemplateId &&
     other.notificationGroups == notificationGroups &&
     other.offsetUnit == offsetUnit &&
     other.emailTemplateName == emailTemplateName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (offsetDirection.hashCode) +
    (offsetAmount.hashCode) +
    (offsetOrigin.hashCode) +
    (emailTemplateId.hashCode) +
    (notificationGroups.hashCode) +
    (offsetUnit.hashCode) +
    (emailTemplateName.hashCode);

  @override
  String toString() => 'NotificationTriggerV1[offsetDirection=$offsetDirection, offsetAmount=$offsetAmount, offsetOrigin=$offsetOrigin, emailTemplateId=$emailTemplateId, notificationGroups=$notificationGroups, offsetUnit=$offsetUnit, emailTemplateName=$emailTemplateName]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'offset_direction'] = offsetDirection;
      _json[r'offset_amount'] = offsetAmount;
      _json[r'offset_origin'] = offsetOrigin;
      _json[r'email_template_id'] = emailTemplateId;
      _json[r'notification_groups'] = notificationGroups;
      _json[r'offset_unit'] = offsetUnit;
      _json[r'email_template_name'] = emailTemplateName;
    return _json;
  }

  /// Returns a new [NotificationTriggerV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationTriggerV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationTriggerV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationTriggerV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationTriggerV1(
        offsetDirection: NotificationTriggerV1OffsetDirectionEnum.fromJson(json[r'offset_direction'])!,
        offsetAmount: mapValueOfType<int>(json, r'offset_amount')!,
        offsetOrigin: NotificationTriggerV1OffsetOriginEnum.fromJson(json[r'offset_origin'])!,
        emailTemplateId: mapValueOfType<int>(json, r'email_template_id')!,
        notificationGroups: json[r'notification_groups'] is List
            ? (json[r'notification_groups'] as List).cast<String>()
            : const [],
        offsetUnit: NotificationTriggerV1OffsetUnitEnum.fromJson(json[r'offset_unit'])!,
        emailTemplateName: mapValueOfType<String>(json, r'email_template_name')!,
      );
    }
    return null;
  }

  static List<NotificationTriggerV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationTriggerV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTriggerV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationTriggerV1> mapFromJson(dynamic json) {
    final map = <String, NotificationTriggerV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationTriggerV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationTriggerV1-objects as value to a dart map
  static Map<String, List<NotificationTriggerV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationTriggerV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationTriggerV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'offset_direction',
    'offset_amount',
    'offset_origin',
    'email_template_id',
    'notification_groups',
    'offset_unit',
    'email_template_name',
  };
}

/// Whether the offset should be calculated for before, or after the event
class NotificationTriggerV1OffsetDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerV1OffsetDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BEFORE = NotificationTriggerV1OffsetDirectionEnum._(r'BEFORE');
  static const AFTER = NotificationTriggerV1OffsetDirectionEnum._(r'AFTER');

  /// List of all possible values in this [enum][NotificationTriggerV1OffsetDirectionEnum].
  static const values = <NotificationTriggerV1OffsetDirectionEnum>[
    BEFORE,
    AFTER,
  ];

  static NotificationTriggerV1OffsetDirectionEnum? fromJson(dynamic value) => NotificationTriggerV1OffsetDirectionEnumTypeTransformer().decode(value);

  static List<NotificationTriggerV1OffsetDirectionEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationTriggerV1OffsetDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTriggerV1OffsetDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationTriggerV1OffsetDirectionEnum] to String,
/// and [decode] dynamic data back to [NotificationTriggerV1OffsetDirectionEnum].
class NotificationTriggerV1OffsetDirectionEnumTypeTransformer {
  factory NotificationTriggerV1OffsetDirectionEnumTypeTransformer() => _instance ??= const NotificationTriggerV1OffsetDirectionEnumTypeTransformer._();

  const NotificationTriggerV1OffsetDirectionEnumTypeTransformer._();

  String encode(NotificationTriggerV1OffsetDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerV1OffsetDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerV1OffsetDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'BEFORE': return NotificationTriggerV1OffsetDirectionEnum.BEFORE;
        case r'AFTER': return NotificationTriggerV1OffsetDirectionEnum.AFTER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationTriggerV1OffsetDirectionEnumTypeTransformer] instance.
  static NotificationTriggerV1OffsetDirectionEnumTypeTransformer? _instance;
}


/// Whether the offset should be calculated from the start, or finish of the event
class NotificationTriggerV1OffsetOriginEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerV1OffsetOriginEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const START = NotificationTriggerV1OffsetOriginEnum._('START');
  static const END = NotificationTriggerV1OffsetOriginEnum._('END');

  /// List of all possible values in this [enum][NotificationTriggerV1OffsetOriginEnum].
  static const values = <NotificationTriggerV1OffsetOriginEnum>[
    START,
    END,
  ];

  static NotificationTriggerV1OffsetOriginEnum? fromJson(dynamic value) => NotificationTriggerV1OffsetOriginEnumTypeTransformer().decode(value);

  static List<NotificationTriggerV1OffsetOriginEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationTriggerV1OffsetOriginEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTriggerV1OffsetOriginEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationTriggerV1OffsetOriginEnum] to Object,
/// and [decode] dynamic data back to [NotificationTriggerV1OffsetOriginEnum].
class NotificationTriggerV1OffsetOriginEnumTypeTransformer {
  factory NotificationTriggerV1OffsetOriginEnumTypeTransformer() => _instance ??= const NotificationTriggerV1OffsetOriginEnumTypeTransformer._();

  const NotificationTriggerV1OffsetOriginEnumTypeTransformer._();

  Object encode(NotificationTriggerV1OffsetOriginEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerV1OffsetOriginEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerV1OffsetOriginEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case 'START': return NotificationTriggerV1OffsetOriginEnum.START;
        case 'END': return NotificationTriggerV1OffsetOriginEnum.END;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationTriggerV1OffsetOriginEnumTypeTransformer] instance.
  static NotificationTriggerV1OffsetOriginEnumTypeTransformer? _instance;
}


/// Whether the offset should be calculated as `days` or `hours`
class NotificationTriggerV1OffsetUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerV1OffsetUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const days = NotificationTriggerV1OffsetUnitEnum._(r'days');
  static const hours = NotificationTriggerV1OffsetUnitEnum._(r'hours');

  /// List of all possible values in this [enum][NotificationTriggerV1OffsetUnitEnum].
  static const values = <NotificationTriggerV1OffsetUnitEnum>[
    days,
    hours,
  ];

  static NotificationTriggerV1OffsetUnitEnum? fromJson(dynamic value) => NotificationTriggerV1OffsetUnitEnumTypeTransformer().decode(value);

  static List<NotificationTriggerV1OffsetUnitEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationTriggerV1OffsetUnitEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTriggerV1OffsetUnitEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationTriggerV1OffsetUnitEnum] to String,
/// and [decode] dynamic data back to [NotificationTriggerV1OffsetUnitEnum].
class NotificationTriggerV1OffsetUnitEnumTypeTransformer {
  factory NotificationTriggerV1OffsetUnitEnumTypeTransformer() => _instance ??= const NotificationTriggerV1OffsetUnitEnumTypeTransformer._();

  const NotificationTriggerV1OffsetUnitEnumTypeTransformer._();

  String encode(NotificationTriggerV1OffsetUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerV1OffsetUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerV1OffsetUnitEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'days': return NotificationTriggerV1OffsetUnitEnum.days;
        case r'hours': return NotificationTriggerV1OffsetUnitEnum.hours;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationTriggerV1OffsetUnitEnumTypeTransformer] instance.
  static NotificationTriggerV1OffsetUnitEnumTypeTransformer? _instance;
}


