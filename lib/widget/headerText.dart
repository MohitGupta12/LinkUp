import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String inputText;

  HeaderText(this.inputText);
  @override
  Widget build(BuildContext context) {
    return Text(
      inputText,
      style: TextStyle(
          color: Theme.of(context).accentColor,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          fontFamily: 'KoHo'),
    );
  }
}
