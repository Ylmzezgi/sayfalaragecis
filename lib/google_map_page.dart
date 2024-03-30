import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({super.key});

  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  static const googlePlex=LatLng(37.42, 122.08);
  static const mountainView=LatLng(37.38,-122.08);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: googlePlex,
            zoom: 13,
          ),
          markers: {
            const Marker(markerId: MarkerId('sourceLocation'),
            icon :BitmapDescriptor.defaultMarker,
              position: googlePlex,
            ),
            const Marker(
              markerId: MarkerId('destionationLocation'),
              icon: BitmapDescriptor.defaultMarker,
              position: mountainView,
            )
          },
        ),
      );
  Future<void> fetchLocationUpdates()async{
    bool serviceEnabled;
    PermissionStatus permissionGranted;
  }


}
