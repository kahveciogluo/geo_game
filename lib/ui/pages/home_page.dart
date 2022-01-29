import 'package:flutter/material.dart';
import 'package:geo_game/ui/bottom_sheets/login_bottom_sheet.dart';
import 'package:rive/rive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.5,
            child: RiveAnimation.asset('assets/3d_raster_test.riv',),
          ),
          Text('GeoGame', style: TextStyle(fontFamily: 'Mukta', color: Colors.white, fontSize: 24),),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => LoginBottomSheet()
                );
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  primary: Colors.transparent,
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
            ),

              ),
              child: const Text('Get Started'),
            ),
          ),
        ],
      ),
    );
  }
}

