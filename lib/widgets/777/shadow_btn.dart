import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ShadowButton extends StatelessWidget {
  final Function()? mOnPressed;
  final Color? mColor;
  final Color? mTextColor;
  final String? mText;
  final double? mFontSize;
  final FontWeight? mFontWeight;
  final IconData? mIcon;

  const ShadowButton(this.mText,
      {Key? key,
      this.mOnPressed,
      this.mColor,
      this.mTextColor,
      this.mFontSize,
      this.mFontWeight,
      this.mIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double tmp = MediaQuery.of(context).size.height / 2;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 18.0,
      ),
      child: SizedBox(
        width: double.infinity,
        child: NeumorphicButton(
          onPressed: mOnPressed,
          style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            color: mColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(tmp)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (mIcon != null) Icon(mIcon, color: Colors.white),
                Text(
                  mText!,
                  style: TextStyle(
                      color: mTextColor,
                      fontWeight: mFontWeight,
                      fontSize: mFontSize),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
