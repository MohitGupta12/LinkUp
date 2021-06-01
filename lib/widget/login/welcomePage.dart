import 'package:flutter/material.dart';
// import 'package:gradient_widgets/gradient_widgets.dart';

import './namePage.dart';
import './mainText.dart';
import './headerText.dart';
import '../../main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              Icons.cancel_outlined,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                  height: 50,
                  width: 50,
                  child:
                      Image.asset('assets/images/icons/tinderColorLogo.png')),
            ),
            Text(
              'Welcome to Tinder',
              style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  fontFamily: 'KoHo'),
            ),
            SizedBox(height: 3),
            Text(
              'Please follow these House Rules',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'KoHo'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Container(
                          height: 18,
                          width: 30,
                          child:
                              Image.asset('assets/images/icons/tickMark.png')),
                      HeaderText('Be yourself.'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MainText(
                      'Make sure your photos, age and bio are true to who you are',
                      FontWeight.w500,
                      15),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          height: 18,
                          width: 30,
                          child:
                              Image.asset('assets/images/icons/tickMark.png')),
                      HeaderText('Stay safe.'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MainText(
                      'Don\'t be too quick to give out personal information.Date Safely ',
                      FontWeight.w500,
                      15),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          height: 18,
                          width: 30,
                          child:
                              Image.asset('assets/images/icons/tickMark.png')),
                      HeaderText('Play it cool.'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MainText(
                      'Respect others and treat them as you would like to be treated.',
                      FontWeight.w500,
                      15),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          height: 18,
                          width: 30,
                          child:
                              Image.asset('assets/images/icons/tickMark.png')),
                      HeaderText('Be proactive'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MainText('Always report bad behavior', FontWeight.w500, 15),
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(new MaterialPageRoute(
                        builder: (context) => NamePage()));
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: BorderSide(color: Colors.red)))),
                  child: Text('I AGREE')),
            )
          ],
        ));
  }
}
