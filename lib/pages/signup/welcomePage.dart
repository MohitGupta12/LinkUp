import 'package:flutter/material.dart';

import './instructions.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0XFFFD297B),
                Color(0XFFFF5864),
                Color(0XFFdf5f23)
              ], begin: Alignment.bottomRight, end: Alignment.topLeft),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 280,
                  width: double.infinity,
                  // color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          height: 65,
                          width: 60,
                          child: Image.asset('assets/icons/tinderLogo.png')),
                      Text(
                        'tinder',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 70),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                Center(
                  child: Text(
                    """By clicking \"Log In\", you agree with our terms.Learn 
how we process your data  in our Privacy Policg and
Cookies Policy""",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        wordSpacing: 1.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
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
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            child: Text(
                              'Log-in',
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 23),
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
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            child: Text(
                              'Sign-up',
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 23),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
