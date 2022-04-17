import 'package:flutter/material.dart';
import 'package:geo_game/theme/button_styles.dart';
import 'package:geo_game/ui/bottom_sheets/login_bottom_sheet.dart';
import 'package:geo_game/ui/widgets/button.dart';
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
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.5,
            child: const RiveAnimation.asset('assets/3d_raster_test.riv',),
          ),
          const Text('GeoGame', style: TextStyle(fontFamily: 'Mukta', color: Colors.white, fontSize: 24),),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
            child: GeoGameButton(
                buttonStyle: MyButtonStyles.roundedButton,
                buttonText: 'Get Started',
                onPressed: (){
                  showModalBottomSheet<void>(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return const LoginBottomSheet();
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}

