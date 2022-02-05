import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geo_game/theme/button_styles.dart';
import 'package:geo_game/ui/bottom_sheets/signup_bottom_sheet.dart';
import 'package:geo_game/ui/widgets/button.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({Key? key}) : super(key: key);

  @override
  _LoginBottomSheetState createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  GlobalKey<FormState> _formState = GlobalKey();
  bool isAutoValidate = false;

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
            Text('Welcome', style: TextStyle(color: Colors.black87, fontSize: 18)),
            Text('Sign into continue', style: TextStyle(color: Colors.black54),),
            buildFormView(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GeoGameButton(buttonText: 'LOGIN', onPressed: (){},buttonStyle: MyButtonStyles.primary,),
            ),
            Center(child: Text('or', style: TextStyle(color: Colors.black54, fontSize: 12))),
            SizedBox(height: 10),
            buildLoginIconButtons(),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical:20),
                child: buildDontHaveAnAccountText(),
              ),
            )
          ],
        ),
      ),
    );
  }

  RichText buildDontHaveAnAccountText() {
    return RichText(
          text: TextSpan(children: [
          TextSpan(text: 'Dont have an account? ',
            style: TextStyle(color: Colors.black87, fontSize: 12),
          ),
          TextSpan(
            text: 'Sign up',
            style: TextStyle(color: Color(0x966D40D4), fontSize: 12),
            recognizer: TapGestureRecognizer()..onTap = (){
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => SignUpBottomSheet()
              );
            },
          ),
        ]),
          );
  }

  // todo: Hangi üyeliklerle giriş yapılacaksa ona göre düzenlenecek
  Row buildLoginIconButtons() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                ),
                child: Icon( Icons.add, size: 30),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                ),
                child: Icon( Icons.add, size: 30),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                ),
                child: Icon( Icons.add, size: 30),
                onPressed: () {},
              ),
          ],);
  }

  Form buildFormView() {
    return Form(
      key: _formState,
      autovalidate: true,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    return value!.isEmpty ? 'This area is not empty' : null ;
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black87, fontSize: 14),
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(color: Colors.black87, fontSize: 14, fontWeight: FontWeight.bold),
                    hintText: 'example@gmail.com',
                    hintStyle: TextStyle(fontSize: 12),
                    prefixIcon: Icon(Icons.mail),

                  ),
                ),
                TextFormField(
                  validator: (value) {
                    return value!.length >= 6 ? null : 'Error' ;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(color: Colors.black87, fontSize: 14, fontWeight: FontWeight.bold),
                    hintText: 'Your password must be at least 6 characters',
                    hintStyle: TextStyle(fontSize: 12),
                    prefixIcon: Icon(Icons.mail),

                  ),
                ),
              ],
            ),
          );
  }
}
