import 'package:flutter/material.dart';
import 'package:tinder/widget/login/passion.dart';
import './mainText.dart';
import '../../main.dart';
import './graidentButton.dart';

class UniName extends StatelessWidget {
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
                '''My
University is''',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: 'University  name',
                  // suffixIcon: IconButton(
                  //   icon: Text(
                  //     'Done',
                  //     textScaleFactor: 0.9,HomeScreen HomeScreen()));
                  //   },
                  // )
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
                child: Text('CONTINUE'),
                radius: BorderRadius.circular(25),
                gradient: LinearGradient(colors: [
                  Color(0XFFFD297B),
                  Color(0XFFFF5864),
                  Color(0XFFdf5f23)
                ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                onPressed: () {
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(
                      builder: (context) => PassionPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
