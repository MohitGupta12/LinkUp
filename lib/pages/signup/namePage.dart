import 'package:flutter/material.dart';
import 'package:tinder/widget/gradientText.dart';
import '../../widget/graidentButton.dart';
import '../../widget/mainText.dart';
import '../signup/welcomePage.dart';
import 'birthdayPage.dart';

class NamePage extends StatefulWidget {
  @override
  _NamePageState createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
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
                '''My first 
name is''',
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
                  hintText: 'First name',
                ),
                onSubmitted: (_) {
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(
                      builder: (context) => HomeScreen()));
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
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(
                      builder: (context) => BirthDayPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
