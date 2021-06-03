import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:tinder/pages/matches.dart';
import 'package:tinder/pages/rootpage.dart';

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
        home: HomeScreen());
  }
}
