import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RaisedGradientButton extends StatefulWidget {
  final Widget child;
  final Gradient gradient1;
  final double width;
  final double height;
  final Function onPressed;
  final BorderRadius radius;
  bool isActive = true;

  // TODO make logic for each button in their respective page;
  RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient1,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
    this.radius,
    this.isActive,
  }) : super(key: key);

  @override
  _RaisedGradientButtonState createState() => _RaisedGradientButtonState();
}

class _RaisedGradientButtonState extends State<RaisedGradientButton> {
  final Gradient gradient2 = LinearGradient(
      colors: [Color(0XFFD6D6D6), Color(0XFFBDBDBD), Color(0XFF9E9E9E)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: widget.radius,
          gradient: (widget.isActive ?? true) ? gradient2 : widget.gradient1,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: widget.onPressed,
            child: Center(
              child: widget.child,
            )),
      ),
    );
  }
}
