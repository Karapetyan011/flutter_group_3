import 'package:flutter/material.dart';

class CustomContainerForMounts extends StatelessWidget {
  const CustomContainerForMounts({
    Key? key,
    required this.mountName,
  }) : super(key: key);

  final String mountName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 3,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(mountName),
            ),
          ),
        ],
      ),
    );
  }
}
