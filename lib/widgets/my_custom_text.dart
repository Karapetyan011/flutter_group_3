/// Created by HrAnT

import 'package:flutter/material.dart';

class MyCustomText extends StatelessWidget {
  const MyCustomText({
    Key? key,
    required this.mText,
    required this.mColor,
    required this.mFontSize,
    required this.mFontWeight,
  }) : super(key: key);

  final String mText;
  final Color mColor;
  final double mFontSize;
  final FontWeight mFontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0),
      child: Text(
        mText,
        style: TextStyle(
          fontSize: mFontSize,
          color: mColor,
          fontWeight: mFontWeight,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
