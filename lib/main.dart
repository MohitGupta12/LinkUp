import 'package:flutter/material.dart';
import 'package:tinder/pages/signup/namePage.dart';
import 'package:tinder/pages/signup/photoPage..dart';
// ignore: unused_import
import './pages/matches.dart';

// ignore: unused_import
import 'pages/signup/welcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.grey[800],
          fontFamily: 'KoHo',
        ),
        home: NamePage());
  }
}
