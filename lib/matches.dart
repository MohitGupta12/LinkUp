import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import './message.dart';
import './setting.dart';
import './main.dart';

class Matchs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Theme.of(context).accentColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                new MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).primaryColor,
        buttonBackgroundColor: Colors.white,
        height: 60,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Icons.person),
          Icon(Icons.chat_bubble),
          Icon(Icons.settings),
        ],
        onTap: (index) {
          if (index == 0) {
            return 0;
          }
          if (index == 1) {
            return 0;
          }
        },
      ),

      // BottomNavigationBar(
      //   currentIndex: 0,
      //   backgroundColor: Theme.of(context).accentColor,
      //   onTap: (index) {
      //     if (index == 0) {
      //       return 0;
      //     }
      //     Navigator.of(context)
      //         // ignore: missing_return
      //         .pushReplacement(new MaterialPageRoute(builder: (context) {
      //       if (index == 1) {
      //         return Message();
      //       }
      //       if (index == 2) {
      //         return Setting();
      //       }
      //     }));
      //   },
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Match'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.chat_bubble), label: 'Messages'),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
      //   ],
      // ),
    );
  }
}
