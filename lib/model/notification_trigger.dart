//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationTrigger {
  /// Returns a new [NotificationTrigger] instance.
  NotificationTrigger({
    @required this.offsetDirection,
    @required this.offsetAmount,
    @required this.offsetOrigin,
    @required this.emailTemplateId,
    this.notificationGroups = const [],
    @required this.offsetUnit,
    @required this.emailTemplateName,
  });

  /// Whether the offset should be calculated for before, or after the event
  NotificationTriggerOffsetDirectionEnum offsetDirection;

  /// The amount to offset the notification from the event
  int offsetAmount;

  /// Whether the offset should be calculated from the start, or finish of the event
  NotificationTriggerOffsetOriginEnum offsetOrigin;

  int emailTemplateId;

  /// An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values
  List<String> notificationGroups;

  /// Whether the offset should be calculated as `days` or `hours`
  NotificationTriggerOffsetUnitEnum offsetUnit;

  /// The name of the EmailTemplate associated with the NotificationTrigger. This is only given from the server, not used as a create param.
  String emailTemplateName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationTrigger &&
     other.offsetDirection == offsetDirection &&
     other.offsetAmount == offsetAmount &&
     other.offsetOrigin == offsetOrigin &&
     other.emailTemplateId == emailTemplateId &&
     other.notificationGroups == notificationGroups &&
     other.offsetUnit == offsetUnit &&
     other.emailTemplateName == emailTemplateName;

  @override
  int get hashCode =>
    (offsetDirection == null ? 0 : offsetDirection.hashCode) +
    (offsetAmount == null ? 0 : offsetAmount.hashCode) +
    (offsetOrigin == null ? 0 : offsetOrigin.hashCode) +
    (emailTemplateId == null ? 0 : emailTemplateId.hashCode) +
    (notificationGroups == null ? 0 : notificationGroups.hashCode) +
    (offsetUnit == null ? 0 : offsetUnit.hashCode) +
    (emailTemplateName == null ? 0 : emailTemplateName.hashCode);

  @override
  String toString() => 'NotificationTrigger[offsetDirection=$offsetDirection, offsetAmount=$offsetAmount, offsetOrigin=$offsetOrigin, emailTemplateId=$emailTemplateId, notificationGroups=$notificationGroups, offsetUnit=$offsetUnit, emailTemplateName=$emailTemplateName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'offset_direction'] = offsetDirection;
      json[r'offset_amount'] = offsetAmount;
      json[r'offset_origin'] = offsetOrigin;
      json[r'email_template_id'] = emailTemplateId;
      json[r'notification_groups'] = notificationGroups;
      json[r'offset_unit'] = offsetUnit;
      json[r'email_template_name'] = emailTemplateName;
    return json;
  }

  /// Returns a new [NotificationTrigger] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NotificationTrigger fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NotificationTrigger(
        offsetDirection: NotificationTriggerOffsetDirectionEnum.fromJson(json[r'offset_direction']),
        offsetAmount: json[r'offset_amount'],
        offsetOrigin: NotificationTriggerOffsetOriginEnum.fromJson(json[r'offset_origin']),
        emailTemplateId: json[r'email_template_id'],
        notificationGroups: json[r'notification_groups'] == null
          ? null
          : (json[r'notification_groups'] as List).cast<String>(),
        offsetUnit: NotificationTriggerOffsetUnitEnum.fromJson(json[r'offset_unit']),
        emailTemplateName: json[r'email_template_name'],
    );

  static List<NotificationTrigger> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NotificationTrigger>[]
      : json.map((v) => NotificationTrigger.fromJson(v)).toList(growable: true == growable);

  static Map<String, NotificationTrigger> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NotificationTrigger>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NotificationTrigger.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NotificationTrigger-objects as value to a dart map
  static Map<String, List<NotificationTrigger>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NotificationTrigger>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NotificationTrigger.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Whether the offset should be calculated for before, or after the event
class NotificationTriggerOffsetDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerOffsetDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BEFORE = NotificationTriggerOffsetDirectionEnum._(r'BEFORE');
  static const AFTER = NotificationTriggerOffsetDirectionEnum._(r'AFTER');

  /// List of all possible values in this [enum][NotificationTriggerOffsetDirectionEnum].
  static const values = <NotificationTriggerOffsetDirectionEnum>[
    BEFORE,
    AFTER,
  ];

  static NotificationTriggerOffsetDirectionEnum fromJson(dynamic value) =>
    NotificationTriggerOffsetDirectionEnumTypeTransformer().decode(value);

  static List<NotificationTriggerOffsetDirectionEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NotificationTriggerOffsetDirectionEnum>[]
      : json
          .map((value) => NotificationTriggerOffsetDirectionEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [NotificationTriggerOffsetDirectionEnum] to String,
/// and [decode] dynamic data back to [NotificationTriggerOffsetDirectionEnum].
class NotificationTriggerOffsetDirectionEnumTypeTransformer {
  const NotificationTriggerOffsetDirectionEnumTypeTransformer._();

  factory NotificationTriggerOffsetDirectionEnumTypeTransformer() => _instance ??= NotificationTriggerOffsetDirectionEnumTypeTransformer._();

  String encode(NotificationTriggerOffsetDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerOffsetDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerOffsetDirectionEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'BEFORE': return NotificationTriggerOffsetDirectionEnum.BEFORE;
      case r'AFTER': return NotificationTriggerOffsetDirectionEnum.AFTER;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [NotificationTriggerOffsetDirectionEnumTypeTransformer] instance.
  static NotificationTriggerOffsetDirectionEnumTypeTransformer _instance;
}

/// Whether the offset should be calculated from the start, or finish of the event
class NotificationTriggerOffsetOriginEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerOffsetOriginEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const START = NotificationTriggerOffsetOriginEnum._('START');
  static const END = NotificationTriggerOffsetOriginEnum._('END');

  /// List of all possible values in this [enum][NotificationTriggerOffsetOriginEnum].
  static const values = <NotificationTriggerOffsetOriginEnum>[
    START,
    END,
  ];

  static NotificationTriggerOffsetOriginEnum fromJson(dynamic value) =>
    NotificationTriggerOffsetOriginEnumTypeTransformer().decode(value);

  static List<NotificationTriggerOffsetOriginEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NotificationTriggerOffsetOriginEnum>[]
      : json
          .map((value) => NotificationTriggerOffsetOriginEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [NotificationTriggerOffsetOriginEnum] to Object,
/// and [decode] dynamic data back to [NotificationTriggerOffsetOriginEnum].
class NotificationTriggerOffsetOriginEnumTypeTransformer {
  const NotificationTriggerOffsetOriginEnumTypeTransformer._();

  factory NotificationTriggerOffsetOriginEnumTypeTransformer() => _instance ??= NotificationTriggerOffsetOriginEnumTypeTransformer._();

  Object encode(NotificationTriggerOffsetOriginEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerOffsetOriginEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerOffsetOriginEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case 'START': return NotificationTriggerOffsetOriginEnum.START;
      case 'END': return NotificationTriggerOffsetOriginEnum.END;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [NotificationTriggerOffsetOriginEnumTypeTransformer] instance.
  static NotificationTriggerOffsetOriginEnumTypeTransformer _instance;
}

/// Whether the offset should be calculated as `days` or `hours`
class NotificationTriggerOffsetUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerOffsetUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const days = NotificationTriggerOffsetUnitEnum._(r'days');
  static const hours = NotificationTriggerOffsetUnitEnum._(r'hours');

  /// List of all possible values in this [enum][NotificationTriggerOffsetUnitEnum].
  static const values = <NotificationTriggerOffsetUnitEnum>[
    days,
    hours,
  ];

  static NotificationTriggerOffsetUnitEnum fromJson(dynamic value) =>
    NotificationTriggerOffsetUnitEnumTypeTransformer().decode(value);

  static List<NotificationTriggerOffsetUnitEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NotificationTriggerOffsetUnitEnum>[]
      : json
          .map((value) => NotificationTriggerOffsetUnitEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [NotificationTriggerOffsetUnitEnum] to String,
/// and [decode] dynamic data back to [NotificationTriggerOffsetUnitEnum].
class NotificationTriggerOffsetUnitEnumTypeTransformer {
  const NotificationTriggerOffsetUnitEnumTypeTransformer._();

  factory NotificationTriggerOffsetUnitEnumTypeTransformer() => _instance ??= NotificationTriggerOffsetUnitEnumTypeTransformer._();

  String encode(NotificationTriggerOffsetUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerOffsetUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerOffsetUnitEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'days': return NotificationTriggerOffsetUnitEnum.days;
      case r'hours': return NotificationTriggerOffsetUnitEnum.hours;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [NotificationTriggerOffsetUnitEnumTypeTransformer] instance.
  static NotificationTriggerOffsetUnitEnumTypeTransformer _instance;
}

