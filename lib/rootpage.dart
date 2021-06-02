import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tinder/matches.dart';
import 'package:tinder/message.dart';
import 'package:tinder/profile.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 10,
      //   backgroundColor: Theme.of(context).accentColor,
      //   leading: GestureDetector(
      //     onTap: () {
      //       Navigator.of(context).pushReplacement(
      //           new MaterialPageRoute(builder: (context) => HomeScreen()));
      //     },
      //     child: Icon(
      //       Icons.arrow_back_sharp,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      body: getBody(),
      bottomNavigationBar: CurvedNavigationBar(
        color: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).primaryColor,
        buttonBackgroundColor: Colors.white70,
        height: 60,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Icons.person),
          Icon(Icons.chat_bubble),
          Icon(Icons.edit),
        ],
        onTap: (index) {
          if (index != pageIndex) {
            setState(() {
              pageIndex = index;
            });
          }
        },
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [Matchs(), Message(), Profile()],
    );
  }
}
