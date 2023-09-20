import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:places_app/models/place.dart';




class MapScreen extends StatefulWidget {
  final PlaceLocation initialLocation;
  final bool isSelecting;

  MapScreen({this.initialLocation =  const PlaceLocation( latitude:37.4548, longitude:-121.98 ), this.isSelecting  = false});



  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   Text(' your map'),

      ),
      body:  GoogleMap(
        initialCameraPosition: CameraPosition(
        target: LatLng(
          widget.initialLocation.latitude,
      widget.initialLocation.longitude) ,
          zoom: 16,

      ) ,
      ),
    );
  }
}

