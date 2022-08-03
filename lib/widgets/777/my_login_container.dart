import 'package:flutter/material.dart';
import 'package:flutter_group_3/widgets/777/my_shadow_button.dart';

import 'login_password_text_field.dart';
import 'login_username_text_field.dart';
import 'my_flip_card.dart';
import 'my_login_button.dart';

class LogInContainer extends StatelessWidget{
  const LogInContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
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
                      children:[
                        const Icon(
                          Icons.person_pin_sharp,
                          color: Colors.indigoAccent,
                          size: 80.0,
                        ),
                        const SizedBox(height: 32.0,),
                        Form( key: myFormKey,
                          child: Column(
                            children: [
                              const LoginUsernameTextField(),
                              const LoginPasswordTextField(),
                              MyLoginButton(
                                myFormKey:myFormKey,
                              )
                            ],
                          ),
                          ),
                        MyShadowButton(
                          'Flip Card',
                          myColor: Colors.red,
                          myFontSize: 18.0,
                          myTextColor: Colors.black,
                          myFontWeight: FontWeight.bold,
                          myOnPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyFlipCard()
                                )
                            );
                          },
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ),

          ) ,

        ),
      ),
    );
  }

}