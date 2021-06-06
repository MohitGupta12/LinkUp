import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Hobbies extends StatefulWidget {
  final String inputText;
  Hobbies(
    this.inputText,
  );
  @override
  _HobbiesState createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
  Color c1 = Colors.grey[350];
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 3),
      child: Container(
        // height: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: c1, width: 2)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: (isActive == true)
                    ? ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(colors: [
                          Color(0XFFdf5f23),
                          Color(0XFFFD297B),
                        ], begin: Alignment.bottomLeft, end: Alignment.topRight)
                            .createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                        ),
                        child: Text(
                          widget.inputText,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      )
                    : Text(
                        widget.inputText,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
              ),
            ),
            onTap: () {
              setState(() {
                if (isActive == false) {
                  c1 = Colors.pink;
                  isActive = true;
                } else if (isActive == true) {
                  c1 = Colors.grey[350];
                  isActive = false;
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
