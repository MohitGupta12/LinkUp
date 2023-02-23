import 'package:flutter/material.dart';
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
          fontFamily: 'KoHo',
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.grey[800]),
        ),
        home: HomeScreen());
  }
}
