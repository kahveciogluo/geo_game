import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
              padding: EdgeInsets.symmetric(vertical: 10),
              child: buildSignUpButton(context),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical:20),
                child: buildAlreadyHaveAnAccountText(),
              ),
            )
          ],
        ),
      ),
    );
  }

  RichText buildAlreadyHaveAnAccountText() {
    return RichText(
      text: TextSpan(children: [
        TextSpan(text: 'Already have an account? ',
          style: TextStyle(color: Colors.black87, fontSize: 12),
        ),
        TextSpan(
          text: 'Login',
          style: TextStyle(color: Color(0x96A078FF), fontSize: 12),
          recognizer: TapGestureRecognizer()..onTap = (){
            print('deneme');
          } ,
        ),
      ]),
    );
  }

  ElevatedButton buildSignUpButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        primary: Color(0x96A078FF),

      ),
      child: const Text('SIGN UP'),
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
