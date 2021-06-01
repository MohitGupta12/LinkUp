// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// import './matches.dart';
// import './setting.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
            child: Text(
          'Message',
          style: TextStyle(color: Colors.black),
        )),
      ),
    );
  }
}
