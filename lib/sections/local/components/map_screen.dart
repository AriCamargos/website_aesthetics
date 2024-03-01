import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 500,
        height: 500,
        child: GoogleMap(
          initialCameraPosition: const CameraPosition(
            target: LatLng(-23.5499461, -46.8178584),
            zoom: 11,
          ),
          markers: {
            const Marker(
              markerId: MarkerId('São Paulo'),
              position: LatLng(-23.5499461, -46.8178584),
            ),
          },
        ),
      ),
    );
  }
}