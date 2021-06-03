// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/material.dart';
// // // ignore: unused_import
// // import 'package:tinder/widget/login/imageInput.dart';
// import 'package:tinder/widget/login/mainText.dart';
// import 'package:tinder/widget/login/passion.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
// // ignore: unused_import/
// import 'graidentButton.dart';

// class PhotoPage extends StatefulWidget {
//   @override
//   _PhotoPageState createState() => _PhotoPageState();
// }

// class _PhotoPageState extends State<PhotoPage> {
//   static File dummy;

//   List<File> image = [dummy];
//   Future<void> takePictureCam() async {
//     final picker = ImagePicker();
//     final imageFile = await picker.getImage(
//         source: ImageSource.camera, maxWidth: 100, maxHeight: 150);
//     setState(
//       () {
//         image.add(new File(imageFile.path));
//       },
//     );
//   }

//   Future<void> takePictureGal() async {
//     final picker = ImagePicker();
//     final imageFile = await picker.getImage(
//         source: ImageSource.gallery, maxWidth: 90, maxHeight: 140);
//     setState(() {
//       image.add(File(imageFile.path));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white24,
//         elevation: 0.0,
//         leading: GestureDetector(
//           onTap: () {
//             Navigator.of(context).push(
//                 new MaterialPageRoute(builder: (context) => PassionPage()));
//           },
//           child: Icon(
//             Icons.arrow_back_ios_rounded,
//             color: Theme.of(context).accentColor,
//           ),
//         ),
//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           children: [
//             Text(
//               'Add photos',
//               style: TextStyle(fontSize: 35),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             MainText('Add at least 2 photos to continue', FontWeight.w400, 17),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextButton(onPressed: takePictureCam, child: Text('Camera')),
//                 TextButton(onPressed: takePictureGal, child: Text('Gallery')),
//               ],
//             ),

//             SizedBox(
//               height: 100,
//             ),
//             Column(
//               children: <Widget>[
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: DottedBorder(
//                         strokeWidth: 2,
//                         dashPattern: [8, 2],
//                         child: Container(
//                           height: 150,
//                           width: 100,
//                           decoration: BoxDecoration(
//                             color: Colors.grey[300],
//                           ),
//                           child: image != null
//                               ? Container(
//                                   decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                       image: FileImage(image[]),
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 )
//                               : Container(),
//                           // child: GestureDetector(
//                           //   onTap: () {},
//                           // ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: DottedBorder(
//                         strokeWidth: 2,
//                         dashPattern: [8, 2],
//                         child: Container(
//                           height: 150,
//                           width: 100,
//                           decoration: BoxDecoration(
//                             color: Colors.grey[300],
//                           ),
//                           child: image != null
//                               ? Container(
//                                   decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                       image: FileImage(image[1]),
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 )
//                               : Container(),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: DottedBorder(
//                         strokeWidth: 2,
//                         dashPattern: [8, 2],
//                         child: Container(
//                           height: 150,
//                           width: 100,
//                           decoration: BoxDecoration(
//                             color: Colors.grey[300],
//                           ),
//                           // child: Image.file(_storedImage),
//                           child: GestureDetector(
//                             onTap: () {},
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: DottedBorder(
//                         strokeWidth: 2,
//                         dashPattern: [8, 2],
//                         child: Container(
//                           height: 150,
//                           width: 100,
//                           decoration: BoxDecoration(
//                             color: Colors.grey[300],
//                           ),
//                           // child: Image.file(_storedImage),
//                           child: GestureDetector(
//                             onTap: () {},
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: DottedBorder(
//                         strokeWidth: 2,
//                         dashPattern: [8, 2],
//                         child: Container(
//                           height: 150,
//                           width: 100,
//                           decoration: BoxDecoration(
//                             color: Colors.grey[300],
//                           ),
//                           // child: Image.file(_storedImage),
//                           child: GestureDetector(
//                             onTap: () {},
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: DottedBorder(
//                         strokeWidth: 2,
//                         dashPattern: [8, 2],
//                         child: Container(
//                           height: 150,
//                           width: 100,
//                           decoration: BoxDecoration(
//                             color: Colors.grey[300],
//                           ),
//                           // child: Image.file(_storedImage),
//                           child: GestureDetector(
//                             onTap: () {},
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.15,
//             ),
//             // SizedBox(
//             //   height: 200,
//             // ),
//             RaisedGradientButton(
//               child: Text('CONTINUE'),
//               radius: BorderRadius.circular(25),
//               gradient: LinearGradient(colors: [
//                 Color(0XFFFD297B),
//                 Color(0XFFFF5864),
//                 Color(0XFFdf5f23)
//               ], begin: Alignment.bottomLeft, end: Alignment.topRight),
//               onPressed: () {},
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
