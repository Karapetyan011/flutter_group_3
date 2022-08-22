import 'package:flutter/material.dart';

import '../generated/l10n.dart';

Widget changeLocation(context) {
  late String cityName;
  return Scaffold(
    body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color(0xff3593fc),
            Color(0xff3b82da),
            Color(0xff6f95c4),
            Color(0xff515560),
            Color(0xff000000),
            Color(0xff000000),
          ])),
      constraints: const BoxConstraints.expand(),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0,),
                          decoration: const BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16.0),
                                topLeft: Radius.circular(16.0),
                              )
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,right: 16.0, bottom: 16.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 4,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.0),
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                            ),
                            color: Colors.black26,
                          ),
                          padding: const EdgeInsets.all(32.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Type City Name',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextField(
                                cursorColor: Colors.grey,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0
                                ),
                                // decoration: kTextFieldInputDecoration,
                                onChanged: (newValue) {
                                  cityName = newValue;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, cityName);
                  },
                  child: Container(
                    width: 200.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.lightBlueAccent),
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                              Colors.grey,
                              Colors.black26,
                            ])),
                    child: Center(
                      child: Text(
                        S.of(context).changeLocation,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    ),
  );
}
