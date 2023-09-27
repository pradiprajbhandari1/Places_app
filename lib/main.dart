import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/great_places.dart';
import './screens/places_list_screen.dart';
import './screens/add_place_screen.dart';
import './screens/place_detail_screen.dart';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),

child :MaterialApp(


      title: 'Places',
      theme: ThemeData(

        primarySwatch: Colors.pink,
      ),
      home: PlacesListScreen(),
  routes: {
        AddPlaceScreen.routeName:(ctx)=> AddPlaceScreen(),
    PlaceDetailScreen.routeName:(ctx)=> PlaceDetailScreen(),
  }

    ),
    );
  }
}
