import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../generated/l10n.dart';
import '../models/location_provider.dart';
import '../models/weather_model.dart';
import '../screens/change_location_page.dart';

Widget selectLocation(BuildContext context, Weather? data) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.only(
        top: 32.0,
        left: 32.0,
        right: 32.0,
        bottom: 8.0,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.all(12.0),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0x74000000),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              // side: const BorderSide(color: Colors.red),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
            ),
            Text(
              S.of(context).changeLocation,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
        onPressed: () async {
          var typedName = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return changeLocation(context);
              },
            ),
          );
          if (typedName != null) {
            context.read<LocationProvider>().changeLocation(typedName);
          }
        },
      ),
    ),
  );
}
