import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget{
  final String? myValidateEmptyMessage, myInvalidMessage,myRegex, myHintText;
  final TextEditingController? myController;
  final Function()? myOnPressed;
  final Function(String?)? myOnSaved;
  final int? myMaxLength;
  final TextInputType? myTextInputType;
  final bool myVisibility;

  const MyTextField({
    Key? key,
    this.myController,
    this.myValidateEmptyMessage,
    this.myInvalidMessage,
    this.myRegex,
    this.myOnSaved,
    this.myMaxLength,
    this.myTextInputType,
    this.myHintText,
    this.myVisibility = false,
    this.myOnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double temp = MediaQuery.of(context).size.height/2;
    FocusNode focus = FocusNode();
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: TextFormField(
        focusNode: focus,
        obscureText: myVisibility,
        validator:(value) {
          if(value!.isEmpty){
            return myValidateEmptyMessage;
          }
          if(!RegExp(myRegex!).hasMatch(value)){
            return myRegex;
          }
          return null;
        },
        onSaved: myOnSaved,
        obscuringCharacter: '*',
        textAlign: TextAlign.left,
        maxLength: myMaxLength,
        onChanged: (String change) {},
        controller: myController,
        maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
        enableSuggestions: false,
        autocorrect: false,
        cursorColor: Colors.black,
        keyboardType: myTextInputType,
        style: const TextStyle( fontSize: 16.0, color: Colors.black),
        decoration: InputDecoration(
          counterText: '',
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.indigoAccent, width: 2.0),
            borderRadius: BorderRadius.circular(temp),
          ),
            border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(temp),
        ),
            focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 1.0),
            borderRadius: BorderRadius.circular(temp),
           ),
          fillColor: Colors.white,
          filled: true,
          hintText: myHintText,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
          contentPadding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 5.0),
          suffixIcon: myOnPressed != null ? IconButton(
            icon: Icon(
              myVisibility ? Icons.visibility_off : Icons.visibility
            ),
            color: Colors.grey,
            onPressed: myOnPressed,
          )
           : null,
         ),
      ),
    );
  }

}