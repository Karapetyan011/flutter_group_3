import 'package:flutter/material.dart';

Widget containerCenterAdditionalInfo(
    BuildContext context, String topText, IconData icon, String bottomText) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 6.0),
    child: SizedBox(
      height: MediaQuery.of(context).size.height / 6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            topText,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16.0),
            textAlign: TextAlign.center,
          ),
          Icon(
            icon,
            size: 32.0,
            color: const Color(0xfffdfdfd),
          ),
          Text(
            bottomText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}
