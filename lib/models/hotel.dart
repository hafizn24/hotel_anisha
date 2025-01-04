class Hotel {
  final String street;
  final String streetName;
  final String buildingNumber;
  final String city;

  Hotel({
    required this.street,
    required this.streetName,
    required this.buildingNumber,
    required this.city,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) {
    return Hotel(
      street: json['street'],
      streetName: json['streetName'],
      buildingNumber: json['buildingNumber'],
      city: json['city'],
    );
  }
}
