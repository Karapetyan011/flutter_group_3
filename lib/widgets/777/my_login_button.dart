import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'my_shadow_button.dart';


class MyLoginButton extends StatelessWidget{
  final GlobalKey<FormState> myFormKey;

  const MyLoginButton({Key? key, required this.myFormKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyShadowButton(
      'Log In',
      myColor: Colors.white,
      myFontSize: 18,
      myFontWeight: FontWeight.bold,
      myOnPressed: (){
      if (myFormKey.currentState!.validate()) {
        if (kDebugMode) {
          print("Successful");
          return;
        }
      } else{
        if(kDebugMode){
          print('Unsuccessful');
        }
      }
      },
      myTextColor: Colors.grey,
    );
  }
}