import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

// import 'package:tinder/widget/login/photoPage..dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  // ignore: unused_field
  File _storedImage;
  Future<void> takePicture() async {
    final picker = ImagePicker();
    final imageFile = await picker.getImage(
        source: ImageSource.camera, maxWidth: 100, maxHeight: 150);
    setState(() {
      _storedImage = File(imageFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    takePicture();
    return Image.file(_storedImage);
  }
}

// class ClickImage extends StatefulWidget {
//   @override
//   _ClickImageState createState() => _ClickImageState();
// }

// class _ClickImageState extends State<ClickImage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Select source',
//           style: TextStyle(color: Colors.black, fontSize: 20),
//         ),
//         backgroundColor: Colors.white,
//         elevation: 2.0,
//         leading: GestureDetector(
//           onTap: () {
//             Navigator.of(context).pushReplacement(
//                 new MaterialPageRoute(builder: (context) => PhotoPage()));
//           },
//           child: Icon(
//             Icons.arrow_back,
//             color: Theme.of(context).primaryColor,
//           ),
//         ),
//       ),
//       body: Container(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 100,
//                 width: double.infinity,
//                 margin: EdgeInsets.all(10),
//                 child: GestureDetector(
//                   onTap: () {
//                     // ignore: unnecessary_statements
//                     ClickImage;
//                   },
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: Icon(
//                           Icons.camera_alt,
//                           size: 70,
//                           color: Colors.grey[400],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           child: Text(
//                             'Camera',
//                             style: TextStyle(fontSize: 30),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 100,
//                 width: double.infinity,
//                 margin: EdgeInsets.all(10),
//                 child: GestureDetector(
//                   onTap: () {
//                     // ignore: unnecessary_statements
//                     ImageInput;
//                   },
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: Icon(
//                           Icons.image_outlined,
//                           size: 70,
//                           color: Colors.grey[400],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           child: Text(
//                             'Gallery',
//                             style: TextStyle(fontSize: 30),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
