import 'package:flutter/material.dart';
import 'package:flutter_group_3/widgets/777/shadow_btn.dart';


import 'custom_flip_card_container.dart';
import 'login_btn.dart';
import 'login_password_text_field.dart';
import 'login_username_text_field.dart';


final formKey = GlobalKey<FormState>();

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 26.0,
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    32.0,
                  ),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Icon(
                          Icons.person_pin,
                          color: Colors.red,
                          size: 80.0,
                        ),
                        const SizedBox(height: 32.0),
                        _buildForm(),
                        _loginBtn(context),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm(){
    return  Form(
      key: formKey,
      child: Column(
        children: [
          const LoginUsernameTextField(),
          const LoginPasswordTextField(),
          LoginButton(
            mFormKey: formKey,
          )
        ],
      ),
    );
  }

  Widget _loginBtn(BuildContext context){
    return ShadowButton(
      'Flip Card',
      mColor: Colors.greenAccent.shade700,
      mFontSize: 18,
      mTextColor: Colors.white,
      mFontWeight: FontWeight.bold,
      mOnPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
            const CustomFlipCardsContainer(),
          ),
        );
      },
    );
  }
}
