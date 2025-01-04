import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/hotel.dart';

Future<List<Hotel>> fetchHotels() async {
  final url = Uri.parse('https://fakerapi.it/api/v2/addresses?_quantity=5&_country_code=ms_MY');
  
  // No need for special headers, as the API doesn't require an Authorization header
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    
    // 'data' contains the list of address objects returned by the API
    final List<dynamic> data = jsonData['data'];

    // Map the data to Hotel objects and return the list
    return data.map((addressData) => Hotel.fromJson(addressData)).toList();
  } else {
    throw Exception('Failed to load hotels');
  }
}
