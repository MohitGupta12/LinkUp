import 'package:flutter/material.dart';
import 'package:tinder/widget/gradientText.dart';

import './namePage.dart';
import './gender.dart';
import '../../widget/graidentButton.dart';
import '../../widget/mainText.dart';

class BirthDayPage extends StatefulWidget {
  @override
  _BirthDayPageState createState() => _BirthDayPageState();
}

class _BirthDayPageState extends State<BirthDayPage> {
  bool colorValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) => NamePage()));
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
<<<<<<< HEAD
            color: Theme.of(context).accentColor,
=======
            color: Theme.of(context).colorScheme.secondary,
>>>>>>> master
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
birthday is''',
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
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: 'DD/MM/YYYY',
                ),
                onSubmitted: (_) {
                  Navigator.of(context).push(
                      new MaterialPageRoute(builder: (context) => Gender()));
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              MainText('Your age will be public', FontWeight.w500, 15),
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
                      new MaterialPageRoute(builder: (context) => Gender()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
