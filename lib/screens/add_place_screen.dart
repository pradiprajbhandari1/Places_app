
import 'dart:io';
import 'package:flutter/material.dart';

import '../widgets/image_input.dart';

import 'package:provider/provider.dart';
import '../providers/great_places.dart';
import '../widgets/location_input.dart';
import '../models/place.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName ='/add-place';



  @override
  _AddPlaceScreenState  createState() => _AddPlaceScreenState();
}





class _AddPlaceScreenState extends State<AddPlaceScreen> {
final _titleController = TextEditingController();
File _pickedImage;
PlaceLocation _pickedLocation;

void _selectImage(File pickedImage)
{
  _pickedImage = pickedImage;
}

void _selectPlace(double lat, double lng){
_pickedLocation = PlaceLocation(latitude: lat, longitude:lng);

  //.
}








void _savePlace() {
  if (_titleController.text.isEmpty ||
      _pickedImage ==null ||
_pickedLocation ==  null) {
return;

    }
  Provider.of<GreatPlaces>(context,listen:false).adddPlace(_titleController.text, _pickedImage, _pickedLocation);



  Navigator.of(context).pop();

}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a place'),

      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,

         children: <Widget>[
         Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
               child: Column(
                children:<Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                 controller: _titleController,
               ),


               SizedBox( height: 10,),
                ImageInput(_selectImage),
                  SizedBox( height: 10,),
                  LocationInput(_selectPlace),



                ],
    ),
            )


            ),

          ),




          ElevatedButton.icon(
            icon: const Icon(Icons.add, color: Colors.blue,),
            label: const Text('Add Place'),
            onPressed: _savePlace,


              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
    ),
  ],
    ),




    );
  }
}

