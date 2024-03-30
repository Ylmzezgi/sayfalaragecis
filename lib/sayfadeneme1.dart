import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gecisvemap/anasayfa2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart/';
class anasayfac extends StatefulWidget {
  const anasayfac({Key? key}) : super(key: key);

  @override
  _anasayfacState createState() => _anasayfacState();
}

class _anasayfacState extends State {
  late GoogleMapController mapController;
  final LatLng _center=const LatLng(-23.55, -46.63);
  void _onMapCreated(GoogleMapController controller) {
    mapController=controller;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('sdfghjk'),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          markers: {
            const Marker(
              markerId: MarkerId('asd'),
              position: LatLng(-23.55, -46.63),
            )
          },

        ),
      ),);
  }}
