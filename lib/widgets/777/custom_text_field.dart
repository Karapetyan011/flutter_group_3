import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final String? mValidateEmptyMsg, mValidateInvalidMsg, mRegExp, mHintText;
  final TextEditingController? mController;
  final Function()? mOnPressed;
  final Function(String?)? mOnSaved;
  final int? mMaxLength;
  final TextInputType? mTextInputType;
  bool mVisibility;

   CustomTextField(
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
      this.mOnPressed,
      })
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    double tmp = MediaQuery.of(context).size.height / 2;
    FocusNode myFocusNode = FocusNode();

    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: TextFormField(
        focusNode: myFocusNode,
        obscureText: widget.mVisibility,
        validator: (value) {
          if (value!.isEmpty) {
            return widget.mValidateEmptyMsg;
          }
          if (!RegExp(widget.mRegExp!).hasMatch(value)) {
            return widget.mValidateInvalidMsg;
          }
          return null;
        },
        onSaved: widget.mOnSaved,
        obscuringCharacter: '*',
        textAlign: TextAlign.left,
        maxLength: widget.mMaxLength,
        onChanged: (String change) {},
        controller: widget.mController,
        maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
        enableSuggestions: false,
        autocorrect: false,
        cursorColor: Colors.grey,
        keyboardType: widget.mTextInputType,
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
          hintText: widget.mHintText,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24.0, vertical: 5.0),
          suffixIcon: widget.mOnPressed != null
              ? IconButton(
                  icon: Icon(
                      widget.mVisibility ? Icons.visibility_off : Icons.visibility),
                  color: Colors.grey,
                  onPressed: mChangeState,
                )
              : null,
        ),
      ),
    );
  }

  void mChangeState (){
    setState(() {
      widget.mVisibility = !widget.mVisibility;
    });
  }
}
