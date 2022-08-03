// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_group_3/my_test_container.dart';
//
// void main() {
//   runApp(
//     const MyApp(),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyTestContainer(),
//     );
//   }
// }

/// Created by HrAnT
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_group_3/screens/animation_screens/animation_manager.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyCustomApp(),
      home: AnimationManager(),
      // home: DicePage(),
      // home: ListViewPage(),
      // home: PianoApp(),
      // home: SWPage(),
      // home: FlutterStreamBuilder()
      // home: StreamBuilderRealTimeClock(),
      // home: GridViewCount(),
      // home: StackPage(),
      // home: GridViewBuilder(),
      // home: GridViewExtent(),
      // home: LoginContainer(),
    );
  }
}

class MyCustomApp extends StatelessWidget {
  const MyCustomApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepOrange,
                Colors.purple,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('Container onTap');
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey,
                          border: Border.all(width: 2.0, color: Colors.green),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              77.0,
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Press Me',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('press me'),
                    ),
                    // Container(
                    //   height: 400,
                    //   width: 40,
                    //   color: Colors.yellow,
                    //   child: Image.network(
                    //     'https://cdn.pixabay.com/photo/2020/06/01/22/23/eye-5248678_960_720.jpg',
                    //     fit: BoxFit.contain,
                    //   ),
                    // ),
                    // const MyCustomText(
                    //   mText: 'Login',
                    //   mColor: Colors.pink,
                    //   mFontSize: 32.0,
                    //   mFontWeight: FontWeight.bold,
                    // ),
                    // const MyCustomText(
                    //   mText: 'Password',
                    //   mColor: Colors.blue,
                    //   mFontSize: 56.0,
                    //   mFontWeight: FontWeight.w100,
                    // ),

                    // MyCustomInput(
                    //   mTextInputType: TextInputType.text,
                    //   mMaxLength: 18,
                    //   mHintText: 'Login',
                    //   mSuffixIconChanged: false,
                    // ),
                    // MyCustomInput(
                    //   mTextInputType: TextInputType.text,
                    //   mMaxLength: 18,
                    //   mHintText: 'Password',
                    //   mObscureText: true,
                    //   mSuffixVisibility: true,
                    //   mSuffixIconChanged: false,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Login')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print('GestureDetector called');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Remember me',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                            Checkbox(
                              value: true,
                              checkColor: Colors.white,
                              activeColor: Colors.grey,
                              onChanged: (value) {
                                print('GestureDetector called');
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    // const Icon(
                    //   MyFlutterApp.facebook,
                    //   size: 44.0,
                    // ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.yellow,
                        ),
                      ),
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text(
                            'Alert Dialog',
                          ),
                          actionsAlignment: MainAxisAlignment.spaceAround,
                          content: const Text(
                            'Content Message',
                          ),
                          actions: <Widget>[
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.yellow,
                                ),
                              ),
                              onPressed: () {
                                if (kDebugMode) {
                                  print('ok');
                                }
                              },
                              child: const Text(
                                'Ok',
                              ),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.yellow,
                                ),
                              ),
                              onPressed: () {
                                if (kDebugMode) {
                                  print('cancel');
                                }
                              },
                              child: const Text(
                                "Cancel",
                              ),
                            ),
                          ],
                        ),
                      ),
                      child: const Text(
                        'Show Alert Dialog',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                        ),
                      ),
                    ),

                    // GestureDetector(
                    //   onTap: () {
                    //     print('On Tap');
                    //   },
                    //   onLongPress: () {
                    //     print('On Long Pressed');
                    //   },
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(top: 38.0),
                    //     child: Container(
                    //       padding: const EdgeInsets.symmetric(
                    //           horizontal: 18.0, vertical: 8.0),
                    //       decoration: const BoxDecoration(
                    //         color: Colors.purple,
                    //         borderRadius: BorderRadius.all(
                    //           Radius.circular(80.0),
                    //         ),
                    //       ),
                    //       child: const Text(
                    //         'Press me',
                    //         style: TextStyle(
                    //           fontSize: 22.0,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 48.0),
                    //   child: Tooltip(
                    //     textStyle: const TextStyle(
                    //         backgroundColor: Colors.yellow,
                    //         color: Colors.white,
                    //         fontSize: 18.0),
                    //     showDuration: const Duration(
                    //       seconds: 3,
                    //     ),
                    //     message: 'Add button for adding',
                    //     child: ElevatedButton(
                    //       onPressed: () {},
                    //       child: const Icon(
                    //         Icons.add,
                    //         size: 50,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
