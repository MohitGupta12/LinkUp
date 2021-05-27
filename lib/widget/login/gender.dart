import 'package:flutter/material.dart';
import 'package:tinder/widget/login/intrestedGender.dart';
import 'package:tinder/widget/login/mainText.dart';

import '../../main.dart';
import 'graidentButton.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  Color boderColour1 = Colors.grey;
  Color boderColour2 = Colors.grey;
  Color boderColour3 = Colors.grey;
  Color boderColour = Colors.red;
  double one = 2;
  double two = 2;
  double three = 2;
  bool checkBoxValue = false;
  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I am a',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: boderColour1, width: one)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        child: Center(
                            child: Text('Male',
                                style: TextStyle(
                                    color: boderColour1,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 27))),
                        onTap: () {
                          setState(() {
                            boderColour1 = boderColour;
                            one = 3;
                            two = 2;
                            three = 2;
                            boderColour2 = Colors.grey;
                            boderColour3 = Colors.grey;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: boderColour2, width: two)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        child: Center(
                            child: Text('Female',
                                style: TextStyle(
                                    color: boderColour2,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 27))),
                        onTap: () {
                          setState(() {
                            boderColour1 = Colors.grey;
                            boderColour2 = boderColour;
                            two = 3;
                            one = 2;
                            three = 2;
                            boderColour3 = Colors.grey;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: boderColour3, width: three)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        child: Center(
                            child: Text('Others',
                                style: TextStyle(
                                    color: boderColour3,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 27))),
                        onTap: () {
                          setState(() {
                            boderColour1 = Colors.grey;
                            boderColour2 = Colors.grey;
                            boderColour3 = boderColour;
                            three = 3;
                            one = 2;
                            two = 2;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.pink,
                      value: checkBoxValue,
                      onChanged: (bool value) {
                        setState(() {
                          checkBoxValue = value;
                        });
                      }),
                  MainText('Show my gender on my profile', FontWeight.w500, 15)
                ],
              ),
              SizedBox(
                height: 30,
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
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(
                      builder: (context) => IntrestedGender()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
