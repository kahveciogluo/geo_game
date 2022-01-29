import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geo_game/ui/bottom_sheets/signup_bottom_sheet.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({Key? key}) : super(key: key);

  @override
  _LoginBottomSheetState createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: buildLoginButton(context),
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
            style: TextStyle(color: Color(0x96A078FF), fontSize: 12),
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
                    primary: Color(0x96A078FF)
                ),
                child: Icon( Icons.add, size: 30),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    primary: Color(0x96A078FF)
                ),
                child: Icon( Icons.add, size: 30),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    primary: Color(0x96A078FF)
                ),
                child: Icon( Icons.add, size: 30),
                onPressed: () {},
              ),
          ],);
  }

  ElevatedButton buildLoginButton(BuildContext context) {
    return ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              primary: Color(0x96A078FF),

            ),
            child: const Text('LOGIN'),
          );
  }

  Form buildFormView() {
    return Form(
      autovalidate: true,
            child: Column(
              children: [
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
                    counterText: 'Forget Password?'
                  ),
                ),
              ],
            ),
          );
  }
}
