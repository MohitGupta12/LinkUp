import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tinder/pages/matches.dart';
import 'package:tinder/pages/message.dart';
import 'package:tinder/pages/profile.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: CurvedNavigationBar(
<<<<<<< HEAD
        color: Theme.of(context).accentColor,
=======
        color: Theme.of(context).colorScheme.secondary,
>>>>>>> master
        backgroundColor: Theme.of(context).primaryColor,
        buttonBackgroundColor: Colors.white70,
        height: 60,
        index: 1,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Icons.chat_bubble),
          Icon(Icons.person),
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
      children: [Message(), Matchs(), Profile()],
    );
  }
}
