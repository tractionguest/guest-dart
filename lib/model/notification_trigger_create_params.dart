//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationTriggerCreateParams {
  /// Returns a new [NotificationTriggerCreateParams] instance.
  NotificationTriggerCreateParams({
    @required this.offsetUnit,
    this.notificationGroups = const [],
    @required this.emailTemplateId,
    @required this.offsetOrigin,
    @required this.offsetAmount,
    @required this.offsetDirection,
  });

  /// Whether the offset should be calculated as `days` or `hours`
  NotificationTriggerCreateParamsOffsetUnitEnum offsetUnit;

  /// An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values
  List<String> notificationGroups;

  int emailTemplateId;

  /// Whether the offset should be calculated from the start, or finish of the event
  NotificationTriggerCreateParamsOffsetOriginEnum offsetOrigin;

  /// The amount to offset the notification from the event
  int offsetAmount;

  /// Whether the offset should be calculated for before, or after the event
  NotificationTriggerCreateParamsOffsetDirectionEnum offsetDirection;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationTriggerCreateParams &&
     other.offsetUnit == offsetUnit &&
     other.notificationGroups == notificationGroups &&
     other.emailTemplateId == emailTemplateId &&
     other.offsetOrigin == offsetOrigin &&
     other.offsetAmount == offsetAmount &&
     other.offsetDirection == offsetDirection;

  @override
  int get hashCode =>
    (offsetUnit == null ? 0 : offsetUnit.hashCode) +
    (notificationGroups == null ? 0 : notificationGroups.hashCode) +
    (emailTemplateId == null ? 0 : emailTemplateId.hashCode) +
    (offsetOrigin == null ? 0 : offsetOrigin.hashCode) +
    (offsetAmount == null ? 0 : offsetAmount.hashCode) +
    (offsetDirection == null ? 0 : offsetDirection.hashCode);

  @override
  String toString() => 'NotificationTriggerCreateParams[offsetUnit=$offsetUnit, notificationGroups=$notificationGroups, emailTemplateId=$emailTemplateId, offsetOrigin=$offsetOrigin, offsetAmount=$offsetAmount, offsetDirection=$offsetDirection]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'offset_unit'] = offsetUnit;
      json[r'notification_groups'] = notificationGroups;
      json[r'email_template_id'] = emailTemplateId;
      json[r'offset_origin'] = offsetOrigin;
      json[r'offset_amount'] = offsetAmount;
      json[r'offset_direction'] = offsetDirection;
    return json;
  }

  /// Returns a new [NotificationTriggerCreateParams] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NotificationTriggerCreateParams fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NotificationTriggerCreateParams(
        offsetUnit: NotificationTriggerCreateParamsOffsetUnitEnum.fromJson(json[r'offset_unit']),
        notificationGroups: json[r'notification_groups'] == null
          ? null
          : (json[r'notification_groups'] as List).cast<String>(),
        emailTemplateId: json[r'email_template_id'],
        offsetOrigin: NotificationTriggerCreateParamsOffsetOriginEnum.fromJson(json[r'offset_origin']),
        offsetAmount: json[r'offset_amount'],
        offsetDirection: NotificationTriggerCreateParamsOffsetDirectionEnum.fromJson(json[r'offset_direction']),
    );

  static List<NotificationTriggerCreateParams> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NotificationTriggerCreateParams>[]
      : json.map((v) => NotificationTriggerCreateParams.fromJson(v)).toList(growable: true == growable);

  static Map<String, NotificationTriggerCreateParams> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NotificationTriggerCreateParams>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NotificationTriggerCreateParams.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NotificationTriggerCreateParams-objects as value to a dart map
  static Map<String, List<NotificationTriggerCreateParams>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NotificationTriggerCreateParams>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NotificationTriggerCreateParams.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Whether the offset should be calculated as `days` or `hours`
class NotificationTriggerCreateParamsOffsetUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerCreateParamsOffsetUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const days = NotificationTriggerCreateParamsOffsetUnitEnum._(r'days');
  static const hours = NotificationTriggerCreateParamsOffsetUnitEnum._(r'hours');

  /// List of all possible values in this [enum][NotificationTriggerCreateParamsOffsetUnitEnum].
  static const values = <NotificationTriggerCreateParamsOffsetUnitEnum>[
    days,
    hours,
  ];

  static NotificationTriggerCreateParamsOffsetUnitEnum fromJson(dynamic value) =>
    NotificationTriggerCreateParamsOffsetUnitEnumTypeTransformer().decode(value);

  static List<NotificationTriggerCreateParamsOffsetUnitEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NotificationTriggerCreateParamsOffsetUnitEnum>[]
      : json
          .map((value) => NotificationTriggerCreateParamsOffsetUnitEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [NotificationTriggerCreateParamsOffsetUnitEnum] to String,
/// and [decode] dynamic data back to [NotificationTriggerCreateParamsOffsetUnitEnum].
class NotificationTriggerCreateParamsOffsetUnitEnumTypeTransformer {
  const NotificationTriggerCreateParamsOffsetUnitEnumTypeTransformer._();

  factory NotificationTriggerCreateParamsOffsetUnitEnumTypeTransformer() => _instance ??= NotificationTriggerCreateParamsOffsetUnitEnumTypeTransformer._();

  String encode(NotificationTriggerCreateParamsOffsetUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerCreateParamsOffsetUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerCreateParamsOffsetUnitEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'days': return NotificationTriggerCreateParamsOffsetUnitEnum.days;
      case r'hours': return NotificationTriggerCreateParamsOffsetUnitEnum.hours;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [NotificationTriggerCreateParamsOffsetUnitEnumTypeTransformer] instance.
  static NotificationTriggerCreateParamsOffsetUnitEnumTypeTransformer _instance;
}

/// Whether the offset should be calculated from the start, or finish of the event
class NotificationTriggerCreateParamsOffsetOriginEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerCreateParamsOffsetOriginEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const START = NotificationTriggerCreateParamsOffsetOriginEnum._(r'START');
  static const END = NotificationTriggerCreateParamsOffsetOriginEnum._(r'END');

  /// List of all possible values in this [enum][NotificationTriggerCreateParamsOffsetOriginEnum].
  static const values = <NotificationTriggerCreateParamsOffsetOriginEnum>[
    START,
    END,
  ];

  static NotificationTriggerCreateParamsOffsetOriginEnum fromJson(dynamic value) =>
    NotificationTriggerCreateParamsOffsetOriginEnumTypeTransformer().decode(value);

  static List<NotificationTriggerCreateParamsOffsetOriginEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NotificationTriggerCreateParamsOffsetOriginEnum>[]
      : json
          .map((value) => NotificationTriggerCreateParamsOffsetOriginEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [NotificationTriggerCreateParamsOffsetOriginEnum] to String,
/// and [decode] dynamic data back to [NotificationTriggerCreateParamsOffsetOriginEnum].
class NotificationTriggerCreateParamsOffsetOriginEnumTypeTransformer {
  const NotificationTriggerCreateParamsOffsetOriginEnumTypeTransformer._();

  factory NotificationTriggerCreateParamsOffsetOriginEnumTypeTransformer() => _instance ??= NotificationTriggerCreateParamsOffsetOriginEnumTypeTransformer._();

  String encode(NotificationTriggerCreateParamsOffsetOriginEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerCreateParamsOffsetOriginEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerCreateParamsOffsetOriginEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'START': return NotificationTriggerCreateParamsOffsetOriginEnum.START;
      case r'END': return NotificationTriggerCreateParamsOffsetOriginEnum.END;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [NotificationTriggerCreateParamsOffsetOriginEnumTypeTransformer] instance.
  static NotificationTriggerCreateParamsOffsetOriginEnumTypeTransformer _instance;
}

/// Whether the offset should be calculated for before, or after the event
class NotificationTriggerCreateParamsOffsetDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTriggerCreateParamsOffsetDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BEFORE = NotificationTriggerCreateParamsOffsetDirectionEnum._(r'BEFORE');
  static const AFTER = NotificationTriggerCreateParamsOffsetDirectionEnum._(r'AFTER');

  /// List of all possible values in this [enum][NotificationTriggerCreateParamsOffsetDirectionEnum].
  static const values = <NotificationTriggerCreateParamsOffsetDirectionEnum>[
    BEFORE,
    AFTER,
  ];

  static NotificationTriggerCreateParamsOffsetDirectionEnum fromJson(dynamic value) =>
    NotificationTriggerCreateParamsOffsetDirectionEnumTypeTransformer().decode(value);

  static List<NotificationTriggerCreateParamsOffsetDirectionEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NotificationTriggerCreateParamsOffsetDirectionEnum>[]
      : json
          .map((value) => NotificationTriggerCreateParamsOffsetDirectionEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [NotificationTriggerCreateParamsOffsetDirectionEnum] to String,
/// and [decode] dynamic data back to [NotificationTriggerCreateParamsOffsetDirectionEnum].
class NotificationTriggerCreateParamsOffsetDirectionEnumTypeTransformer {
  const NotificationTriggerCreateParamsOffsetDirectionEnumTypeTransformer._();

  factory NotificationTriggerCreateParamsOffsetDirectionEnumTypeTransformer() => _instance ??= NotificationTriggerCreateParamsOffsetDirectionEnumTypeTransformer._();

  String encode(NotificationTriggerCreateParamsOffsetDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTriggerCreateParamsOffsetDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTriggerCreateParamsOffsetDirectionEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'BEFORE': return NotificationTriggerCreateParamsOffsetDirectionEnum.BEFORE;
      case r'AFTER': return NotificationTriggerCreateParamsOffsetDirectionEnum.AFTER;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [NotificationTriggerCreateParamsOffsetDirectionEnumTypeTransformer] instance.
  static NotificationTriggerCreateParamsOffsetDirectionEnumTypeTransformer _instance;
}

