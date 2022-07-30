import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String? mValidateEmptyMsg, mValidateInvalidMsg, mRegExp, mHintText;
  final TextEditingController? mController;
  final Function()? mOnPressed;
  final Function(String?)? mOnSaved;
  final int? mMaxLength;
  final TextInputType? mTextInputType;
  final bool mVisibility;

  const CustomTextField(
      {Key? key,
      this.mController,
      this.mValidateEmptyMsg,
      this.mValidateInvalidMsg,
      this.mRegExp,
      this.mOnSaved,
      this.mMaxLength,
      this.mTextInputType,
      this.mHintText,
      this.mVisibility = false,
      this.mOnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double tmp = MediaQuery.of(context).size.height / 2;
    FocusNode myFocusNode = FocusNode();

    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: TextFormField(
        focusNode: myFocusNode,
        obscureText: mVisibility,
        validator: (value) {
          if (value!.isEmpty) {
            return mValidateEmptyMsg;
          }
          if (!RegExp(mRegExp!).hasMatch(value)) {
            return mValidateInvalidMsg;
          }
          return null;
        },
        onSaved: mOnSaved,
        obscuringCharacter: '*',
        textAlign: TextAlign.left,
        maxLength: mMaxLength,
        onChanged: (String change) {},
        controller: mController,
        maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
        enableSuggestions: false,
        autocorrect: false,
        cursorColor: Colors.grey,
        keyboardType: mTextInputType,
        // inputFormatters: <TextInputFormatter>[
        //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),],
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          counterText: '',
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(tmp),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(tmp),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 1.0),
            borderRadius: BorderRadius.circular(tmp),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: mHintText,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24.0, vertical: 5.0),
          suffixIcon: mOnPressed != null
              ? IconButton(
                  icon: Icon(
                      mVisibility ? Icons.visibility_off : Icons.visibility),
                  color: Colors.grey,
                  onPressed: mOnPressed,
                )
              : null,
        ),
      ),
    );
  }
}
