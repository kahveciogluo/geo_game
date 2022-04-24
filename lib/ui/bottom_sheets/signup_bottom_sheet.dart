import 'package:flutter/material.dart';
import 'package:geo_game/theme/button_styles.dart';
import 'package:geo_game/ui/bottom_sheets/login_bottom_sheet.dart';
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
      padding: MediaQuery.of(context).viewInsets,
      decoration: const BoxDecoration(
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
            const Text('Create an account', style: TextStyle(color: Colors.black87, fontSize: 18)),
            const Text('Sign up and start play now', style: TextStyle(color: Colors.black54),),
            buildFormView(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GeoGameButton(buttonText: 'SIGN UP', onPressed: (){}, buttonStyle: MyButtonStyles.primary,),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right:5),
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
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return const LoginBottomSheet();
                        },
                      );

                    },
                    style: ElevatedButton.styleFrom(
                     primary: Colors.transparent,
                      onPrimary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      side: const BorderSide(color: Color(0x966D40D4), width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                    ),
                    child: const Text('Login', style: TextStyle(color: Color(0x966D40D4) )),
                  );
  }

  Form buildFormView() {
    return Form(
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              return value!.isEmpty ? 'This area is not empty' : null ;
            },
            decoration: const InputDecoration(
              labelText: 'NAME',
            ),
          ),
          TextFormField(
            validator: (value) {
              return value!.isEmpty ? 'This area is not empty' : null ;
            },
            decoration: const  InputDecoration(
              labelText: 'EMAIL',
            ),
          ),
          TextFormField(
            validator: (value) {
              return value!.length > 5 ? null : 'Error' ;
            },
            decoration: const  InputDecoration(
                labelText: 'PASSWORD',
            ),
          ),
        ],
      ),
    );
  }
}
