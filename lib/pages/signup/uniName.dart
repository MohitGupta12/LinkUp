import 'package:flutter/material.dart';
import 'package:tinder/pages/signup/photoPage..dart';
import 'package:tinder/widget/gradientText.dart';

import '../signup/intrestedGender.dart';
import '../signup/passion.dart';
import '../../widget/mainText.dart';
import '../../widget/graidentButton.dart';

class UniName extends StatefulWidget {
  @override
  _UniNameState createState() => _UniNameState();
}

class _UniNameState extends State<UniName> {
  bool colorValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                new MaterialPageRoute(builder: (context) => IntrestedGender()));
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
                '''My
University is''',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                autocorrect: true,
                onChanged: (text) {
                  if (text == null || text == '') {
                    setState(() {
                      return colorValue = true;
                    });
                  } else {
                    setState(() {
                      return colorValue = false;
                    });
                  }
                },
                decoration: InputDecoration(
                  hintText: 'University  name',
                ),
                onSubmitted: (_) {
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(
                      builder: (context) => PassionPage()));
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              MainText(
                  'This is how it will show in Tinder,and you will not able to change it',
                  FontWeight.w500,
                  15),
              SizedBox(
                height: 30,
              ),
              RaisedGradientButton(
                child: GradientText(
                  colorValue,
                  'CONTINUE',
                ),
                isActive: (colorValue ?? true) ? false : true,
                radius: BorderRadius.circular(25),
                gradient1: LinearGradient(colors: [
                  Color(0XFFFD297B),
                  Color(0XFFFF5864),
                  Color(0XFFdf5f23)
                ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                onPressed1: () {
                  Navigator.of(context).pushReplacement(
                    new MaterialPageRoute(
                      builder: (context) => PhotoPage(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
