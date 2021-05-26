import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  @required
  final String inputText;
  final FontWeight weight;
  final double size;

  MainText(this.inputText, this.weight, this.size);

  @override
  Widget build(BuildContext context) {
    return Text(
      inputText,
      style: TextStyle(
          color: Colors.grey,
          fontSize: size,
          fontWeight: weight,
          fontFamily: 'KoHo'),
    );
  }
}
