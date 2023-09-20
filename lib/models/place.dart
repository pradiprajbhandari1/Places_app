
import 'dart:io';
import 'package:flutter/foundation.dart';

class PlaceLocation {
  final double latitude;
  final double longitude;
  final String address;


   const PlaceLocation({
this.latitude,
   this.longitude,
 this.address,

  });
}


class Place{
   final String id;
   final String title;
   final PlaceLocation location;
   final File image;


   Place ({
 this.id,
this.title,
    this.image,
this.location,


   });



}