/// Created by HrAnT

import 'package:flutter/material.dart';

class MyCustomInput extends StatefulWidget {
  final bool mObscureText;
  final TextInputType mTextInputType;
  final int mMaxLength;
  final String mHintText;
  bool mSuffixVisibility;
  bool mSuffixIconChanged;

  MyCustomInput({
    Key? key,
    required this.mMaxLength,
    required this.mHintText,
    this.mTextInputType = TextInputType.text,
    this.mObscureText = false,
    this.mSuffixVisibility = false,
    required this.mSuffixIconChanged,
  }) : super(key: key);

  @override
  State<MyCustomInput> createState() => _MyCustomInputState();
}

class _MyCustomInputState extends State<MyCustomInput> {
  @override
  Widget build(BuildContext context) {
    var tmp = MediaQuery.of(context).size.height / 2;
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(
              tmp,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.green,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(
              tmp,
            ),
          ),
          suffixIcon: widget.mSuffixVisibility
              ? GestureDetector(
                  onTap: _myFunction,
                  child: widget.mSuffixIconChanged
                      ? const Icon(
                          Icons.visibility_off,
                          size: 28.0,
                        )
                      : const Icon(
                          Icons.visibility,
                          size: 28.0,
                        ),
                )
              : null,
          hintText: widget.mHintText,
          hintStyle: TextStyle(
            fontSize: 24.0,
            color: Colors.black.withAlpha(150),
          ),
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 5.0,
          ),
        ),
        enabled: true,
        controller: TextEditingController(),
        keyboardType: widget.mTextInputType,
        textAlign: TextAlign.left,
        maxLength: widget.mMaxLength,
        obscureText: widget.mObscureText,
        obscuringCharacter: '*',
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.pink,
        ),
      ),
    );
  }

  void _myFunction() {
    setState(() {
      widget.mSuffixIconChanged = !widget.mSuffixIconChanged;
    });
  }
}
