import 'package:flutter/material.dart';
import 'package:tinder/widget/login/gender.dart';

import 'widget/login/welcomePage.dart';

// ToDo move main.dart to widget folder and fix the error
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

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0XFFFD297B),
              Color(0XFFFF5864),
              Color(0XFFdf5f23)
            ], begin: Alignment.bottomRight, end: Alignment.topLeft),
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 300,
            ),
            Container(
                alignment: Alignment.center,
                height: 280,
                width: double.infinity,
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 55,
                        width: 55,
                        child: Image.asset('assets/image/tinderLogo.png')),
                    Text(
                      'tinder',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 70),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            SizedBox(
              height: 75,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            new MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      style: ButtonStyle(
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: Text(
                        'Log-in',
                        style: TextStyle(
                            color: Theme.of(context).accentColor, fontSize: 23),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            new MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      style: ButtonStyle(
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: Text(
                        'Sign-up',
                        style: TextStyle(
                            color: Theme.of(context).accentColor, fontSize: 23),
                      )),
                ),
              ],
            ),
          ],
        )
      ]),
    );
  }
}
