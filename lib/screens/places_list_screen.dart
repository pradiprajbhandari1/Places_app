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
      body:  FutureBuilder(
    future: Provider.of<GreatPlaces>(context, listen: false)
        .fetchAndSetPlaces(),
builder: (ctx,snapshot) => snapshot.connectionState ==
    ConnectionState.waiting
          ? Center(
          child: CircularProgressIndicator(),
             )

     :      Consumer<GreatPlaces> (

        child: const Center(
          child: Text("... No place yet....... add some  "),
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
                  subtitle: Text(greatPlaces.items[i].location.address),
                  onTap :(){
      // go to detail page ...

    },
    )
      ),
        ),
      ),
      );

  }
}
