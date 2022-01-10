import 'package:flutter/material.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.redAccent, Colors.orangeAccent, Colors.teal],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  )
              )
          ),
          Center(child: Text('GeoGame', style: TextStyle(fontFamily: 'Mukta'),)),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Get Started'),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 40),
                    primary: Colors.deepOrange
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
