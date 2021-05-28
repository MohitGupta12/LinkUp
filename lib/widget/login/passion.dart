import 'package:flutter/material.dart';
import 'package:tinder/widget/login/photoPage..dart';
import '../../main.dart';
import 'graidentButton.dart';
// ignore: unused_import
import 'Hobbies.dart';

class PassionPage extends StatefulWidget {
  @override
  _PassionPageState createState() => _PassionPageState();
}

class _PassionPageState extends State<PassionPage> {
  // int _count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                new MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Passion',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'Lets everyone know wht you\'re passionate about by adding it to your profile.'),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Hobbies('Amine'),
                                Hobbies('Movies'),
                                Hobbies('hikking'),
                                Hobbies('90\'kid')
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Hobbies('Travel'),
                                Hobbies('Art'),
                                Hobbies('Dance'),
                                Hobbies('Poetry')
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedGradientButton(
                child: Text('CONTINUE'),
                radius: BorderRadius.circular(25),
                gradient: LinearGradient(colors: [
                  Color(0XFFFD297B),
                  Color(0XFFFF5864),
                  Color(0XFFdf5f23)
                ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      new MaterialPageRoute(builder: (context) => PhotoPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
