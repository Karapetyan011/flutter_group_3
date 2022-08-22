class Weather {
  String? cityName = '--';
  int? id;
  dynamic temp;
  dynamic wind;
  int? humidity;
  dynamic feelsLike;
  int? pressure;
  int? sunrise;
  int? sunset;
  String? description;
  dynamic icon;

  Weather({
    this.cityName = '--',
    this.id = 0,
    this.temp = 0,
    this.wind = 0,
    this.humidity = 0,
    this.feelsLike = 0.0,
    this.pressure = 0,
    this.sunrise = 0,
    this.sunset = 0,
    this.description = '--',
    this.icon,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temp = json['main']['temp'];
    id = json['weather'][0]['id'];
    wind = json['wind']['speed'];
    humidity = json['main']['humidity'];
    feelsLike = json['main']['feels_like'];
    pressure = json['main']['pressure'];
    sunrise = json['sys']['sunrise'];
    sunset = json['sys']['sunset'];
    description = json['weather'][0]['description'];
    icon = json['weather'][0]['icon'];

  }
}

String getWeatherIcon(int id) {
  if (id < 300) {
    return '🌩';
  } else if (id < 400) {
    return '🌧';
  } else if (id < 600) {
    return '☔️';
  } else if (id < 700) {
    return '☃️';
  } else if (id < 800) {
    return '🌫';
  } else if (id == 800) {
    return '☀️';
  } else if (id <= 804) {
    return '☁️';
  } else {
    return '🤷‍';
  }
}
