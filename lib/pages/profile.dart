import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:tinder/data/account.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget getBody() {
      var size = MediaQuery.of(context).size;
      return SafeArea(
        child: ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Container(
            width: size.width,
            height: size.height * 0.60,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor.withOpacity(0.35),
              boxShadow: [
                BoxShadow(
                    color: Colors.pink.withOpacity(0.35), spreadRadius: 10)
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(account[0]["img"]),
                            alignment: Alignment
                                .topCenter, //just for this image caue it is not centered properly
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    account[0]["name"] + ", " + account[0]["age"],
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).accentColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    account[0]["university"],
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).accentColor),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Theme.of(context)
                                      .accentColor
                                      .withOpacity(0.4),
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.settings,
                              size: 40,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Setting',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .accentColor
                                    .withOpacity(0.8),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 85,
                              width: 85,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0XFFdf5f23),
                                            Color(0XFFFD297B),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Theme.of(context)
                                              .accentColor
                                              .withOpacity(0.4),
                                          blurRadius: 10,
                                          spreadRadius: 5,
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 40,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 5,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).accentColor,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Theme.of(context)
                                                .accentColor
                                                .withOpacity(0.4),
                                            blurRadius: 2,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add_circle_outline_outlined,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Add media',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .accentColor
                                      .withOpacity(0.8),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Theme.of(context)
                                      .accentColor
                                      .withOpacity(0.4),
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.edit,
                              size: 40,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Edit Info',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .accentColor
                                    .withOpacity(0.8),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: getBody(),
    );
  }
}
