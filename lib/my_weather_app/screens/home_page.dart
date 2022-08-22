import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../generated/l10n.dart';
import '../models/location_provider.dart';
import '../models/weather_model.dart';
import '../services/weather_api_client.dart';
import '../widgets/center_additional_info.dart';
import '../widgets/select_location.dart';
import '../widgets/top_main_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  List<String> items = ['en', 'ru'];
  String? selectedItem = 'en';

  Future<void> getData() async {
    data = await client.getCurrentWeather(
      Provider.of<LocationProvider>(context).location,
      'metric',
      S.of(context).language,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var sunrise = data!.sunrise! * 1000;
            var sunset = data!.sunset! * 1000;

            return Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff3593fc),
                    Color(0xff3b82da),
                    Color(0xff6f95c4),
                    Color(0xff515560),
                    Color(0xff000000),
                    Color(0xff000000),
                  ]
                )
              ),
              child: SafeArea(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            right: 16.0,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                            ),

                          ),
                          width: 50,
                          height: 50,
                          child: Center(
                            child: DropdownButton<String>(
                              iconSize: 0,
                              borderRadius: BorderRadius.circular(16.0),
                              dropdownColor: Colors.black,
                              value: selectedItem,
                              items: items
                                  .map(
                                    (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                                  .toList(),
                              onChanged: (item) => setState(() {
                                selectedItem = item;
                                S.load(
                                  Locale('$selectedItem'),
                                );
                              }),
                            ),
                          ),
                        ),
                      ],
                    ),
                        topMainInfo(context, data!, sunrise, sunset),
                        centerAdditionalInfo(context, data, sunrise, sunset),
                        selectLocation(context, Weather()),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
