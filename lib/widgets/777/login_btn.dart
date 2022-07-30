import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'shadow_btn.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> mFormKey;

  const LoginButton({Key? key, required this.mFormKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowButton(
      'Log in',
      mColor: Colors.white,
      mFontSize: 18,
      mFontWeight: FontWeight.bold,
      mOnPressed: () {
        if (mFormKey.currentState!.validate()) {
          if (kDebugMode) {
            print("Successful");
          }
          return;
        } else {
          if (kDebugMode) {
            print("Unsuccessful");
          }
        }
      },
      mTextColor: Colors.grey,
    );
  }
}
