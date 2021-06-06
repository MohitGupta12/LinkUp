import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientText extends StatefulWidget {
  bool active = true;
  final String textv;

  GradientText(
    this.active,
    this.textv,
  );
  @override
  _GradientTextState createState() => _GradientTextState();
}

class _GradientTextState extends State<GradientText> {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => (widget.active ?? true)
          ? LinearGradient(
                  colors: [Colors.black26, Colors.black87],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight)
              .createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            )
          : LinearGradient(colors: [
              Color(0XFFa60a27),
              Color(0XFF5e0000),
            ], begin: Alignment.bottomLeft, end: Alignment.topRight)
              .createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
      child: Text(
        widget.textv,
        style: TextStyle(
          color: Colors.white,
          fontSize: 27,
        ),
      ),
    );
  }
}
