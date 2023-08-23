

import 'package:flutter/material.dart';


class AddPlaceScreen extends StatefulWidget {
  static const routeName ='/add-place';

  const AddPlaceScreen({Key key}) : super(key: key);


  @override
  _AddPlaceScreenState  createState() => _AddPlaceScreenState();
}





class _AddPlaceScreenState extends State<AddPlaceScreen> {
final _titleController = TextEditingController();


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
                Container(),
                TextButton(),
  ],
    ),
            )


            ),

          ),



           Text('User Inputs..'),
          ElevatedButton.icon(
            icon: const Icon(Icons.add, color: Colors.blue,),
            label: const Text('Add Place'),
            onPressed:() {},


              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
    ),
  ],
    ),




    );
  }
}

