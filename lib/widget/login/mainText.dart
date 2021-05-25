import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final String inputText;

  MainText(this.inputText);

  @override
  Widget build(BuildContext context) {
    return Text(
      inputText,
      style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
          fontWeight: FontWeight.w500,
          fontFamily: 'KoHo'),
    );
  }
}
