//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SigninV1 {
  /// Returns a new [SigninV1] instance.
  SigninV1({
    required this.id,
    this.mobileNumber,
    this.signinWatchlist,
    this.hosts = const [],
    this.signinTimestamp,
    this.signinPhotoUrl,
    this.signedOutTimestamp,
    this.locationName,
    this.lastName,
    this.isAcknowledged,
    this.isAccountedFor,
    this.firstName,
    this.email,
    this.company,
    this.registration,
  });

  int id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SigninWatchlistV1? signinWatchlist;

  List<HostV1> hosts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? signinTimestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signinPhotoUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? signedOutTimestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAcknowledged;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAccountedFor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? company;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RegistrationV1? registration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigninV1 &&
     other.id == id &&
     other.mobileNumber == mobileNumber &&
     other.signinWatchlist == signinWatchlist &&
     other.hosts == hosts &&
     other.signinTimestamp == signinTimestamp &&
     other.signinPhotoUrl == signinPhotoUrl &&
     other.signedOutTimestamp == signedOutTimestamp &&
     other.locationName == locationName &&
     other.lastName == lastName &&
     other.isAcknowledged == isAcknowledged &&
     other.isAccountedFor == isAccountedFor &&
     other.firstName == firstName &&
     other.email == email &&
     other.company == company &&
     other.registration == registration;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (mobileNumber == null ? 0 : mobileNumber!.hashCode) +
    (signinWatchlist == null ? 0 : signinWatchlist!.hashCode) +
    (hosts.hashCode) +
    (signinTimestamp == null ? 0 : signinTimestamp!.hashCode) +
    (signinPhotoUrl == null ? 0 : signinPhotoUrl!.hashCode) +
    (signedOutTimestamp == null ? 0 : signedOutTimestamp!.hashCode) +
    (locationName == null ? 0 : locationName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (isAcknowledged == null ? 0 : isAcknowledged!.hashCode) +
    (isAccountedFor == null ? 0 : isAccountedFor!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (registration == null ? 0 : registration!.hashCode);

  @override
  String toString() => 'SigninV1[id=$id, mobileNumber=$mobileNumber, signinWatchlist=$signinWatchlist, hosts=$hosts, signinTimestamp=$signinTimestamp, signinPhotoUrl=$signinPhotoUrl, signedOutTimestamp=$signedOutTimestamp, locationName=$locationName, lastName=$lastName, isAcknowledged=$isAcknowledged, isAccountedFor=$isAccountedFor, firstName=$firstName, email=$email, company=$company, registration=$registration]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'id'] = id;
    if (mobileNumber != null) {
      _json[r'mobile_number'] = mobileNumber;
    }
    if (signinWatchlist != null) {
      _json[r'signin_watchlist'] = signinWatchlist;
    }
      _json[r'hosts'] = hosts;
    if (signinTimestamp != null) {
      _json[r'signin_timestamp'] = signinTimestamp!.toUtc().toIso8601String();
    }
    if (signinPhotoUrl != null) {
      _json[r'signin_photo_url'] = signinPhotoUrl;
    }
    if (signedOutTimestamp != null) {
      _json[r'signed_out_timestamp'] = signedOutTimestamp!.toUtc().toIso8601String();
    }
    if (locationName != null) {
      _json[r'location_name'] = locationName;
    }
    if (lastName != null) {
      _json[r'last_name'] = lastName;
    }
    if (isAcknowledged != null) {
      _json[r'is_acknowledged'] = isAcknowledged;
    }
    if (isAccountedFor != null) {
      _json[r'is_accounted_for'] = isAccountedFor;
    }
    if (firstName != null) {
      _json[r'first_name'] = firstName;
    }
    if (email != null) {
      _json[r'email'] = email;
    }
    if (company != null) {
      _json[r'company'] = company;
    }
    if (registration != null) {
      _json[r'registration'] = registration;
    }
    return _json;
  }

  /// Returns a new [SigninV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SigninV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SigninV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SigninV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SigninV1(
        id: mapValueOfType<int>(json, r'id')!,
        mobileNumber: mapValueOfType<String>(json, r'mobile_number'),
        signinWatchlist: SigninWatchlistV1.fromJson(json[r'signin_watchlist']),
        hosts: HostV1.listFromJson(json[r'hosts'])!,
        signinTimestamp: mapDateTime(json, r'signin_timestamp', ''),
        signinPhotoUrl: mapValueOfType<String>(json, r'signin_photo_url'),
        signedOutTimestamp: mapDateTime(json, r'signed_out_timestamp', ''),
        locationName: mapValueOfType<String>(json, r'location_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        isAcknowledged: mapValueOfType<bool>(json, r'is_acknowledged'),
        isAccountedFor: mapValueOfType<bool>(json, r'is_accounted_for'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        email: mapValueOfType<String>(json, r'email'),
        company: mapValueOfType<String>(json, r'company'),
        registration: RegistrationV1.fromJson(json[r'registration']),
      );
    }
    return null;
  }

  static List<SigninV1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SigninV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SigninV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SigninV1> mapFromJson(dynamic json) {
    final map = <String, SigninV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SigninV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SigninV1-objects as value to a dart map
  static Map<String, List<SigninV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SigninV1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SigninV1.listFromJson(entry.value, growable: growable,);
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
    'hosts',
  };
}

