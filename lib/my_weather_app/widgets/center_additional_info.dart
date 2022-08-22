import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import '../models/weather_model.dart';
import 'container_additional_info.dart';

Widget centerAdditionalInfo(
    BuildContext context, Weather? data, int sunrise, int sunset) {
  return Column(
    children: [

//******************************************************************************
// ******************* TOP ADDITIONAL INFORMATION *****************************
//******************************************************************************

      Container(
        width: MediaQuery.of(context).size.width - 32.0,
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        decoration: BoxDecoration(
          color: const Color(0x37000000),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        S.of(context).sunrise,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      ),
                      const Icon(
                        Icons.brightness_6_outlined,
                        size: 32.0,
                        color: Colors.amberAccent,
                      ),
                      Text(
                        '${DateTime.fromMillisecondsSinceEpoch(sunrise).hour}:'
                            '${DateTime.fromMillisecondsSinceEpoch(sunrise).minute}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        S.of(context).sunset,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      ),
                      const Icon(
                        Icons.brightness_4_outlined,
                        size: 32.0,
                        color: Colors.amber,
                      ),
                      Text(
                        '${DateTime.fromMillisecondsSinceEpoch(sunset).hour}:'
                            '${DateTime.fromMillisecondsSinceEpoch(sunset).minute}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

//******************************************************************************
// ******************* MAIN ADDITIONAL INFORMATION *****************************
//******************************************************************************
      const SizedBox(
        height: 32.0,
      ),

      Container(
        width: MediaQuery.of(context).size.width - 32.0,
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        decoration: BoxDecoration(
          color: const Color(0x37000000),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Divider(
                color: Colors.white38,
                thickness: 2.0,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  containerCenterAdditionalInfo(
                    context,
                    S.of(context).feelsLike,
                    Icons.nature_people_outlined,
                    '${data?.feelsLike!.toInt()}°',
                  ),
                  containerCenterAdditionalInfo(
                    context,
                    S.of(context).wind,
                    Icons.all_inclusive_outlined,
                    '${data?.wind} ${S.of(context).speed_km_h}',
                  ),
                  containerCenterAdditionalInfo(
                    context,
                    S.of(context).humidity,
                    Icons.water_drop_outlined,
                    '${data?.humidity}%',
                  ),
                  containerCenterAdditionalInfo(
                    context,
                    S.of(context).pressure,
                    Icons.vertical_align_center,
                    '${data?.pressure} mb',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
