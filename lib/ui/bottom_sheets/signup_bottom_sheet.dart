import 'package:flutter/material.dart';
import 'package:geo_game/theme/button_styles.dart';
import 'package:geo_game/ui/widgets/button.dart';

class SignUpBottomSheet extends StatefulWidget {
  const SignUpBottomSheet({Key? key}) : super(key: key);

  @override
  _SignUpBottomSheetState createState() => _SignUpBottomSheetState();
}

class _SignUpBottomSheetState extends State<SignUpBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom:10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create an account', style: TextStyle(color: Colors.black87, fontSize: 18)),
            Text('Sign up and start play now', style: TextStyle(color: Colors.black54),),
            buildFormView(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GeoGameButton(buttonText: 'SIGN UP', onPressed: (){}, buttonStyle: MyButtonStyles.primary,),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:5),
                      child: Text(
                  'Already have an account? ',
                  style: TextStyle(color: Colors.black87, fontSize: 12)),
                    ),
                    buildLoginButton(context),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton buildLoginButton(BuildContext context) {
    return ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);

                    },
                    style: ElevatedButton.styleFrom(
                     primary: Colors.transparent,
                      onPrimary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      side: BorderSide(color: Color(0x966D40D4), width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                    ),
                    child: const Text('Login', style: TextStyle(color: Color(0x966D40D4) )),
                  );
  }

  Form buildFormView() {
    return Form(
      autovalidate: false,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              return value!.isEmpty ? 'This area is not empty' : null ;
            },
            decoration: InputDecoration(
              labelText: 'NAME',
            ),
          ),
          TextFormField(
            validator: (value) {
              return value!.isEmpty ? 'This area is not empty' : null ;
            },
            decoration: InputDecoration(
              labelText: 'EMAIL',
            ),
          ),
          TextFormField(
            validator: (value) {
              return value!.length > 5 ? null : 'Error' ;
            },
            decoration: InputDecoration(
                labelText: 'PASSWORD',
            ),
          ),
        ],
      ),
    );
  }
}
