import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geo_game/ui/pages/home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

