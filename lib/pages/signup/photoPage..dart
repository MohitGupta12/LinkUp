import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tinder/pages/rootpage.dart';
import 'package:tinder/pages/signup/passion.dart';
import 'package:tinder/widget/graidentButton.dart';
import '../../widget/mainText.dart';
import '../signup/passion.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tinder/widget/mainText.dart';
import '../../widget/graidentButton.dart';

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  File storedImage;
  File image1;
  File image2;

  Future<void> takePictureCam() async {
    final picker = ImagePicker();
    final imageFile = await picker.getImage(
        source: ImageSource.camera, maxWidth: 100, maxHeight: 150);
    setState(
      () {
        storedImage = File(imageFile.path);
      },
    );
  }

  Future<void> takePictureGal() async {
    final picker = ImagePicker();
    final imageFile = await picker.getImage(
        source: ImageSource.gallery, maxWidth: 100, maxHeight: 150);
    setState(
      () {
        storedImage = File(imageFile.path);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => PassionPage()));
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Add photos',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(
              height: 8,
            ),
            MainText('Add at least 1 photos to continue', FontWeight.w400, 17),
            SizedBox(
              height: 100,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DottedBorder(
                        strokeWidth: 2,
                        dashPattern: [8, 2],
                        child: Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                          child: storedImage != null
                              ? Image.file(
                                  storedImage,
                                  fit: BoxFit.cover,
                                )
                              : Container(),
                          // child: GestureDetector(
                          //   onTap: () {},
                          // ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DottedBorder(
                        strokeWidth: 2,
                        dashPattern: [8, 2],
                        child: Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                          // child: storedImage != null
                          //     ? Image.file(storedImage, fit: BoxFit.cover)
                          //     : Container(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DottedBorder(
                        strokeWidth: 2,
                        dashPattern: [8, 2],
                        child: Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                          // child: Image.file(_storedImage),
                          child: GestureDetector(
                            onTap: () {},
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DottedBorder(
                        strokeWidth: 2,
                        dashPattern: [8, 2],
                        child: Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                          // child: Image.file(_storedImage),
                          child: GestureDetector(
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DottedBorder(
                        strokeWidth: 2,
                        dashPattern: [8, 2],
                        child: Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                          // child: Image.file(_storedImage),
                          child: GestureDetector(
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DottedBorder(
                        strokeWidth: 2,
                        dashPattern: [8, 2],
                        child: Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                          // child: Image.file(_storedImage),
                          child: GestureDetector(
                            onTap: () {},
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: takePictureCam,
                  child: Text('Camera'),
                ),
                ElevatedButton(
                  onPressed: takePictureCam,
                  child: Text('Gallery'),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            RaisedGradientButton(
              child: Text('CONTINUE'),
              radius: BorderRadius.circular(25),
              gradient1: LinearGradient(colors: [
                Color(0XFFFD297B),
                Color(0XFFFF5864),
                Color(0XFFdf5f23)
              ], begin: Alignment.bottomLeft, end: Alignment.topRight),
              onPressed1: () {
                Navigator.of(context).pushReplacement(
                  new MaterialPageRoute(
                    builder: (context) => RootPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
