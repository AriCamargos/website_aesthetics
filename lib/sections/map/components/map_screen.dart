import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double lat = -23.5499461;
    double lng = -46.8178584;
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;

    return
        //isMobile
        //     ?
        Padding(
      padding: const EdgeInsets.all(kDefaultPaddingXs),
      child: Container(
        decoration: BoxDecoration(boxShadow: [kDefaultShadowMap]),
        child: SizedBox(
          width: 600,
          height: 300,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(lat, lng),
              zoom: 11,
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
    /*  : Container(
            decoration: BoxDecoration(boxShadow: [kDefaultShadowMap]),
            child: SizedBox(
              width: 700,
              height: 400,
              child: GoogleMap(

                initialCameraPosition: CameraPosition(
                  target: LatLng(lat, lng),
                  zoom: 11,
                ),
               
                markers: {
                  Marker(
                    markerId: const MarkerId('São Paulo'),
                    position: LatLng(lat, lng),
                  ),
                },
              ),
            ),
          );*/
  }
}