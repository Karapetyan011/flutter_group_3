import 'package:flutter/material.dart';

class CustomContainerForPerson extends StatelessWidget {
  const CustomContainerForPerson({
    Key? key,
    // required this.next,
    required this.personName,
    required this.mass,
    required this.birthYear,
    required this.height,
    required this.gender,
    // required this.count,
  }) : super(key: key);

  // final String next;
  final String personName;
  final String mass;
  final String height;
  final String birthYear;
  final String gender;

  // final String count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.6),
                  blurRadius: 5,
                  offset: const Offset(4, 4), // changes position of shadow
                ),
              ],
              gradient: LinearGradient(
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
                  color: Colors.white70,
                  size: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                      "name: $personName"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 18.0,
                      ),
                      "mass: $mass"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 18.0,
                      ),
                      "height: $height"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 18.0,
                      ),
                      "birthYear: $birthYear"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 20.0,
                      ),
                      "gender: $gender"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
