import 'package:flutter/material.dart';
import '../models/hotel.dart';

class DetailScreen extends StatelessWidget {
  final Hotel hotel;

  DetailScreen({required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(hotel.streetName)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              hotel.streetName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text('Location: ${hotel.buildingNumber}'),
            SizedBox(height: 8.0),
            Text('Location: ${hotel.street}'),
            SizedBox(height: 8.0),
            Text('City: ${hotel.city}'),
          ],
        ),
      ),
    );
  }
}
