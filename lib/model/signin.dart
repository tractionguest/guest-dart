//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Signin {
  /// Returns a new [Signin] instance.
  Signin({
    @required this.id,
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

  String mobileNumber;

  SigninWatchlist signinWatchlist;

  List<Host> hosts;

  DateTime signinTimestamp;

  String signinPhotoUrl;

  DateTime signedOutTimestamp;

  String locationName;

  String lastName;

  bool isAcknowledged;

  bool isAccountedFor;

  String firstName;

  String email;

  String company;

  Registration registration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Signin &&
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
    (id == null ? 0 : id.hashCode) +
    (mobileNumber == null ? 0 : mobileNumber.hashCode) +
    (signinWatchlist == null ? 0 : signinWatchlist.hashCode) +
    (hosts == null ? 0 : hosts.hashCode) +
    (signinTimestamp == null ? 0 : signinTimestamp.hashCode) +
    (signinPhotoUrl == null ? 0 : signinPhotoUrl.hashCode) +
    (signedOutTimestamp == null ? 0 : signedOutTimestamp.hashCode) +
    (locationName == null ? 0 : locationName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (isAcknowledged == null ? 0 : isAcknowledged.hashCode) +
    (isAccountedFor == null ? 0 : isAccountedFor.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (company == null ? 0 : company.hashCode) +
    (registration == null ? 0 : registration.hashCode);

  @override
  String toString() => 'Signin[id=$id, mobileNumber=$mobileNumber, signinWatchlist=$signinWatchlist, hosts=$hosts, signinTimestamp=$signinTimestamp, signinPhotoUrl=$signinPhotoUrl, signedOutTimestamp=$signedOutTimestamp, locationName=$locationName, lastName=$lastName, isAcknowledged=$isAcknowledged, isAccountedFor=$isAccountedFor, firstName=$firstName, email=$email, company=$company, registration=$registration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (mobileNumber != null) {
      json[r'mobile_number'] = mobileNumber;
    }
    if (signinWatchlist != null) {
      json[r'signin_watchlist'] = signinWatchlist;
    }
      json[r'hosts'] = hosts;
    if (signinTimestamp != null) {
      json[r'signin_timestamp'] = signinTimestamp.toUtc().toIso8601String();
    }
    if (signinPhotoUrl != null) {
      json[r'signin_photo_url'] = signinPhotoUrl;
    }
    if (signedOutTimestamp != null) {
      json[r'signed_out_timestamp'] = signedOutTimestamp.toUtc().toIso8601String();
    }
    if (locationName != null) {
      json[r'location_name'] = locationName;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (isAcknowledged != null) {
      json[r'is_acknowledged'] = isAcknowledged;
    }
    if (isAccountedFor != null) {
      json[r'is_accounted_for'] = isAccountedFor;
    }
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (company != null) {
      json[r'company'] = company;
    }
    if (registration != null) {
      json[r'registration'] = registration;
    }
    return json;
  }

  /// Returns a new [Signin] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Signin fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Signin(
        id: json[r'id'],
        mobileNumber: json[r'mobile_number'],
        signinWatchlist: SigninWatchlist.fromJson(json[r'signin_watchlist']),
        hosts: Host.listFromJson(json[r'hosts']),
        signinTimestamp: json[r'signin_timestamp'] == null
          ? null
          : DateTime.parse(json[r'signin_timestamp']),
        signinPhotoUrl: json[r'signin_photo_url'],
        signedOutTimestamp: json[r'signed_out_timestamp'] == null
          ? null
          : DateTime.parse(json[r'signed_out_timestamp']),
        locationName: json[r'location_name'],
        lastName: json[r'last_name'],
        isAcknowledged: json[r'is_acknowledged'],
        isAccountedFor: json[r'is_accounted_for'],
        firstName: json[r'first_name'],
        email: json[r'email'],
        company: json[r'company'],
        registration: Registration.fromJson(json[r'registration']),
    );

  static List<Signin> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Signin>[]
      : json.map((v) => Signin.fromJson(v)).toList(growable: true == growable);

  static Map<String, Signin> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Signin>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Signin.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Signin-objects as value to a dart map
  static Map<String, List<Signin>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Signin>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Signin.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

