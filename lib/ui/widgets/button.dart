import 'package:flutter/material.dart';

class GeoGameButton extends StatefulWidget {
  final String buttonText;
  final OnPressed onPressed;
  final ButtonStyle buttonStyle;
  const GeoGameButton({Key? key, required this.buttonStyle, required this.buttonText, required this.onPressed}) : super(key: key);

  @override
  _GeoGameButtonState createState() => _GeoGameButtonState();
}

class _GeoGameButtonState extends State<GeoGameButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: widget.buttonStyle,
      onPressed: ()=> widget.onPressed,
      child: Text(widget.buttonText,),
    );
  }
}

typedef OnPressed = void Function();
