import 'package:flutter/material.dart';
import 'package:places_app/providers/great_places.dart';
import './add_place_screen.dart';
import 'package:provider/provider.dart';
class PlacesListScreen  extends StatelessWidget {
  const PlacesListScreen({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title:  const Text('Your places'),
     actions:<Widget> [
       IconButton(
         icon: const Icon(Icons.add),
           onPressed: () {
           Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
           } ,
         ),
  ],
  ),
      body:  Consumer<GreatPlaces>(
        child: const Center(
          child: Text(".......... add some  "),
      ),
        builder: (ctx, greatPlaces, ch)=> greatPlaces.items.length <= 0
            ? ch
            : ListView.builder(
            itemCount: greatPlaces.items.length,
            itemBuilder: (ctx,i)=> ListTile(
          leading: CircleAvatar(backgroundImage: FileImage(greatPlaces.items[i].image,
      ),
    ),
                title: Text(greatPlaces.items[i].title),
                  onTap :(){
      // go to detail page ...

    },
    )
      ),
        ),

      );

  }
}
