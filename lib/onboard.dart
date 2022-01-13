import 'package:flutter/material.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/planet.jpeg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 150, bottom:100, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('GeoGame', style: TextStyle(fontFamily: 'Mukta', color: Colors.white, fontSize: 24),),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selected = !selected;
                  });
                  print(selected.toString());
                },
                child: const Text('Get Started'),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 40),
                    primary: Colors.blueAccent
                ),
              ),
              AnimatedContainer(
                duration: Duration(microseconds: 10),
                alignment: Alignment.bottomCenter,
                color: Colors.white,
                width: 100,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
