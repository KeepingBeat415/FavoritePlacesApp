import 'package:flutter/material.dart';
import 'package:favorite_places_app/model/place.dart';

class PlacesDetailScreen extends StatelessWidget {
  final Place place;

  const PlacesDetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Stack(
        children: [
          Image.file(
            place.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ],
      ),
    );
  }
}
