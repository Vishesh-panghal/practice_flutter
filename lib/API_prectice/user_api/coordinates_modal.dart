class CoordinatesModal {
  double lat;
  double lng;

  CoordinatesModal({
    required this.lat,
    required this.lng,
  });

  factory CoordinatesModal.fromJson(Map<String, dynamic> json) {
    return CoordinatesModal(
      lat: json['lat'],
      lng: json['lng'],
    );
  }
}

// Address Modal :-

class AddressModal {
  String address;
  String city;
  String postalCode;
  String state;
  CoordinatesModal coordinates;

  AddressModal({
    required this.address,
    required this.city,
    required this.state,
    required this.postalCode,
    required this.coordinates,
  });

  factory AddressModal.fromJson(Map<String, dynamic> json) {
    return AddressModal(
      address: json['address'],
      city: json['city'],
      state: json['state'],
      postalCode: json['postalCode'],
      coordinates: json['coordinates'],
    );
  }
}

// hair Modal:-

class HairModal {
  String color;
  String type;

  HairModal({
    required this.color,
    required this.type,
  });

  factory HairModal.fromJson(Map<String, dynamic> json) {
    return HairModal(
      color: json['color'],
      type: json['type'],
    );
  }
}
