//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginatedInvitesListV1 {
  /// Returns a new [PaginatedInvitesListV1] instance.
  PaginatedInvitesListV1({
    this.invites = const [],
    required this.pagination,
  });

  List<InviteV1> invites;

  PaginationV1 pagination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedInvitesListV1 &&
     other.invites == invites &&
     other.pagination == pagination;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (invites.hashCode) +
    (pagination.hashCode);

  @override
  String toString() => 'PaginatedInvitesListV1[invites=$invites, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'invites'] = invites;
      _json[r'pagination'] = pagination;
    return _json;
  }

  /// Returns a new [PaginatedInvitesListV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginatedInvitesListV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginatedInvitesListV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginatedInvitesListV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginatedInvitesListV1(
        invites: InviteV1.listFromJson(json[r'invites'])!,
        pagination: PaginationV1.fromJson(json[r'pagination'])!,
      );
    }
    return null;
  }

  static List<PaginatedInvitesListV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginatedInvitesListV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginatedInvitesListV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginatedInvitesListV1> mapFromJson(dynamic json) {
    final map = <String, PaginatedInvitesListV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedInvitesListV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginatedInvitesListV1-objects as value to a dart map
  static Map<String, List<PaginatedInvitesListV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginatedInvitesListV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedInvitesListV1.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'invites',
    'pagination',
  };
}

