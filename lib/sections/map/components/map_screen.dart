import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double lat = -23.6096339;
    double lng = -46.7695725;
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;

    return Padding(
      padding: const EdgeInsets.all(kDefaultPaddingXs),
      child: Container(
        decoration: BoxDecoration(boxShadow: [kDefaultShadowMap]),
        child: SizedBox(
          width: isMobile ? 500 : 800,
          height: isMobile ? 300 : 400,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(lat, lng),
              zoom: 12,
            ),
            markers: {
              Marker(
                markerId: const MarkerId('São Paulo'),
                position: LatLng(lat, lng),
              ),
            },
          ),
        ),
      ),
    );
  }
}
