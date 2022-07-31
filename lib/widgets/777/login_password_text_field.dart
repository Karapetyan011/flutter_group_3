import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../constants/constants.dart';
import 'custom_text_field.dart';

class LoginPasswordTextField extends StatelessWidget {
  const LoginPasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();

    return CustomTextField(
      mController: passwordController,
      mHintText: 'Password',
      mMaxLength: 18,
      mRegExp: kPasswordPattern,
      mTextInputType: TextInputType.visiblePassword,
      mValidateEmptyMsg: 'Password is Required',
      mValidateInvalidMsg: 'Invalid Password',
      mVisibility: true,
      mOnPressed: () {},
    );
  }
}
