import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class ImageInput extends StatefulWidget {
  const ImageInput({Key key}) : super(key: key);



  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
 File _storedImage;
 final ImagePicker _picker = ImagePicker();
  Future<void> _takePicture() async {

    final imageFile = await _picker.pickImage(
 source:ImageSource.camera,
 maxWidth:600,
 );
 }

  @override
  Widget build(BuildContext context) {
 return Row (
   children: <Widget>[
     Container(
       width: 100,
       height: 100,
       decoration: BoxDecoration(
         border: Border.all(width:1, color: Colors.grey),
       ),
       child: _storedImage !=null
            ? Image.file(
         _storedImage,
               fit: BoxFit.cover,
                   width: double.infinity,
       )
                   : Text('No Image Taken'),
       alignment: Alignment.center,
     ),
     SizedBox(
       width: 10,
     ),
     Expanded(child: TextButton.icon(
       icon:  Icon(Icons.camera),
       label: Text ('Take Picture'),

       onPressed: _takePicture,


     ),
     ),

   ],
 );



  }
}