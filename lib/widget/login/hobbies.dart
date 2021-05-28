import 'package:flutter/material.dart';

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
  double size = 2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 3),
      child: Container(
        // height: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: c1, width: size)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Text(widget.inputText,
                  style: TextStyle(
                      color: c1, fontWeight: FontWeight.w500, fontSize: 18)),
            )),
            onTap: () {
              setState(() {
                if (c1 == Colors.grey[350]) {
                  c1 = Colors.pink;
                  size = 2.5;
                } else if (c1 == Colors.pink) {
                  c1 = Colors.grey[350];
                  size = 2;
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
