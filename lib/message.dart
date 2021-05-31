import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import './matches.dart';
import './setting.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 10,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                new MaterialPageRoute(builder: (context) => Matchs()));
          },
          child: Icon(Icons.arrow_back_sharp, color: Colors.white),
        ),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
            child: Text(
          'Message',
          style: TextStyle(color: Colors.black),
        )),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).primaryColor,
        buttonBackgroundColor: Colors.white,
        height: 60,
        index: 1,
        items: [
          Icon(Icons.person),
          Icon(Icons.chat_bubble),
          Icon(Icons.settings),
        ],
        onTap: (index) {
          if (index == 1) {
            return 0;
          }
          Navigator.of(context)
              // ignore: missing_return
              .pushReplacement(new MaterialPageRoute(builder: (context) {
            if (index == 0) {
              return Matchs();
            }
            if (index == 2) {
              return Setting();
            }
          }));
        },
      ),

      // BottomNavigationBar(
      //   currentIndex: 1,
      //   onTap: (index) {
      //     if (index == 1) {
      //       return 0;
      //     }
      //     Navigator.of(context)
      //         // ignore: missing_return
      //         .pushReplacement(new MaterialPageRoute(builder: (context) {
      //       if (index == 0) {
      //         return Matchs();
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

class Matches {}
