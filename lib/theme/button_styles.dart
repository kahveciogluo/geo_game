import 'package:flutter/material.dart';

class MyButtonStyles {

  static ButtonStyle primary = ElevatedButton.styleFrom(
    fixedSize: Size(double.maxFinite, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
     roundedButton = ElevatedButton.styleFrom(
        fixedSize: Size(double.maxFinite, 50),
        primary: Colors.transparent,
        side: BorderSide(color: Colors.white, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      );


}