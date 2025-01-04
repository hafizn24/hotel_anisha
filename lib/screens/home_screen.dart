import 'package:flutter/material.dart';
import '../models/hotel.dart';
import '../services/api_service.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotels')),
      body: FutureBuilder<List<Hotel>>(
        future: fetchHotels(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No hotels available.'));
          }

          final hotels = snapshot.data!;
          return ListView.builder(
            itemCount: hotels.length,
            itemBuilder: (context, index) {
              final hotel = hotels[index];
              return Card(
                child: ListTile(
                  title: Text(hotel.streetName),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(hotel.buildingNumber),
                      Text(hotel.street),
                      Text(hotel.city),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(hotel: hotel),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
