import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'custom_text_field.dart';


class LoginUsernameTextField extends StatelessWidget {
  const LoginUsernameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    String _email;

    return CustomTextField(
      mController: emailController,
      mHintText:'Email address or username',
      mMaxLength: 40,
      mOnSaved: (String? value) {
        _email = value!;
      },
      mRegExp: kEmailPattern,
      mTextInputType: TextInputType.emailAddress,
      mValidateEmptyMsg: 'Email is Required',
      mValidateInvalidMsg: 'Invalid Email',
    );
  }
}
