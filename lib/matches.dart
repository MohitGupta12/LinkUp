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
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                new MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            return 0;
          }
          Navigator.of(context)
              .pushReplacement(new MaterialPageRoute(builder: (context) {
            if (index == 1) {
              return Message();
            }
            if (index == 2) {
              return Setting();
            }
          }));
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Match'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
        ],
      ),
    );
  }
}
