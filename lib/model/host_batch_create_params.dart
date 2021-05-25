//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HostBatchCreateParams {
  /// Returns a new [HostBatchCreateParams] instance.
  HostBatchCreateParams({
    this.hosts = const [],
  });

  List<HostCreateParams> hosts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HostBatchCreateParams &&
     other.hosts == hosts;

  @override
  int get hashCode =>
    (hosts == null ? 0 : hosts.hashCode);

  @override
  String toString() => 'HostBatchCreateParams[hosts=$hosts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (hosts != null) {
      json[r'hosts'] = hosts;
    }
    return json;
  }

  /// Returns a new [HostBatchCreateParams] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static HostBatchCreateParams fromJson(Map<String, dynamic> json) => json == null
    ? null
    : HostBatchCreateParams(
        hosts: HostCreateParams.listFromJson(json[r'hosts']),
    );

  static List<HostBatchCreateParams> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <HostBatchCreateParams>[]
      : json.map((v) => HostBatchCreateParams.fromJson(v)).toList(growable: true == growable);

  static Map<String, HostBatchCreateParams> mapFromJson(Map<String, dynamic> json) {
    final map = <String, HostBatchCreateParams>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = HostBatchCreateParams.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of HostBatchCreateParams-objects as value to a dart map
  static Map<String, List<HostBatchCreateParams>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<HostBatchCreateParams>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = HostBatchCreateParams.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

