import 'package:flutter/material.dart';

class CustomContainerForPerson extends StatelessWidget {
  const CustomContainerForPerson({
    Key? key,
    required this.personName,
    required this.mass,
  }) : super(key: key);

  final String personName;
  final String mass;

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
                  color: Colors.green.withOpacity(0.1),
                  blurRadius: 5,
                  offset: const Offset(8, 10), // changes position of shadow
                ),
              ],
              gradient:  LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black,
                  Colors.black,
                  Colors.green.shade900,
                ],
              ),
              border: Border.all(
                color: Colors.green.shade900,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 80.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                      "name  = $personName"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                      "mass  = $mass"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
