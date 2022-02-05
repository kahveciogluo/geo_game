import 'package:flutter/material.dart';
import 'package:geo_game/ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color myPrimaryColor = Color(0x966D40D4);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Mukta',
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: myPrimaryColor,
        ),
      ),
      home: const HomePage(),
    );
  }
}

