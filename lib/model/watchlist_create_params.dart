part of guest_sdk.api;

class WatchlistCreateParams {
  
  List<String> aliases = [];
  
  String notes = null;
  
  String lastName = null;
  
  String firstName = null;
  
  String email = null;
  
  String colour = null;
  //enum colourEnum {  RED,  YELLOW,  GREEN,  ORANGE,  };{
  /* A base64 encoded image. base64_image should be strict encoded  */
  String base64Image = null;
  
  String driverLicense = null;
  WatchlistCreateParams();

  @override
  String toString() {
    return 'WatchlistCreateParams[aliases=$aliases, notes=$notes, lastName=$lastName, firstName=$firstName, email=$email, colour=$colour, base64Image=$base64Image, driverLicense=$driverLicense, ]';
  }

  WatchlistCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['aliases'] == null) {
      aliases = null;
    } else {
      aliases = (json['aliases'] as List).cast<String>();
    }
    if (json['notes'] == null) {
      notes = null;
    } else {
          notes = json['notes'];
    }
    if (json['last_name'] == null) {
      lastName = null;
    } else {
          lastName = json['last_name'];
    }
    if (json['first_name'] == null) {
      firstName = null;
    } else {
          firstName = json['first_name'];
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
    if (json['colour'] == null) {
      colour = null;
    } else {
          colour = json['colour'];
    }
    if (json['base64_image'] == null) {
      base64Image = null;
    } else {
          base64Image = json['base64_image'];
    }
    if (json['driver_license'] == null) {
      driverLicense = null;
    } else {
          driverLicense = json['driver_license'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (aliases != null)
      json['aliases'] = aliases;
    if (notes != null)
      json['notes'] = notes;
    if (lastName != null)
      json['last_name'] = lastName;
    if (firstName != null)
      json['first_name'] = firstName;
    if (email != null)
      json['email'] = email;
    if (colour != null)
      json['colour'] = colour;
    if (base64Image != null)
      json['base64_image'] = base64Image;
    if (driverLicense != null)
      json['driver_license'] = driverLicense;
    return json;
  }

  static List<WatchlistCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<WatchlistCreateParams>() : json.map((value) => new WatchlistCreateParams.fromJson(value)).toList();
  }

  static Map<String, WatchlistCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, WatchlistCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new WatchlistCreateParams.fromJson(value));
    }
    return map;
  }
}

