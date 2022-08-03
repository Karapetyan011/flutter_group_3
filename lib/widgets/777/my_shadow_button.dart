import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MyShadowButton extends StatelessWidget{
  final Function()? myOnPressed;
  final Color? myColor;
  final Color? myTextColor;
  final String? myText;
  final double? myFontSize;
  final FontWeight? myFontWeight;
  final IconData? myIcon;

  const MyShadowButton(this.myText,{
    Key? key,
    this.myOnPressed,
    this.myColor,
    this.myTextColor,
    this.myFontSize,
    this.myFontWeight,
    this.myIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double temp = MediaQuery.of(context).size.height / 2;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 18.0,
      ),
      child: SizedBox(
        width: double.infinity,
        child: NeumorphicButton(
          onPressed: myOnPressed,
          style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            color: myColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(temp)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (myIcon != null) Icon(myIcon, color: Colors.white),
                Text(
                  myText!,
                  style: TextStyle(
                      color: myTextColor,
                      fontWeight: myFontWeight,
                      fontSize: myFontSize),
                )
              ],
            ),
          ),
        ) ,
      ),
    );
  }

}