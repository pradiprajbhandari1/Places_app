
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/great_places.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 final id = ModalRoute.of(context).settings.arguments;
 final selectedPlace = Provider.of<GreatPlaces>(context,listen:false).findById;
 return Scaffold(
   appBar: AppBar(
     title: Text(selectedPlace.title),
   ),
body: Column(children: <Widget>)[
  Container(height: 250,
      width: double.infinty,
      child: Image.file(
        selectedPlace.image,
        fit:BoxFit.cover,
          width: double.infinity,
      ),
  ),

          SizedBox(height: 10,),

          Text(
          selectedPlace.location.address,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey,

        ),
      )
      ))
]
 );




  }
}
