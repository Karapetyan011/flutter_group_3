import 'models_constants/person_info_keys.dart';

class Person {
  String? name;
  String? height;
  String? mass;
  String? hair_color;
  String? skin_color;
  String? eye_color;
  String? birth_year;
  String? gender;
  String? homeworld;
  List<dynamic>? films;
  List<dynamic>? species;
  List<dynamic>? vehicles;
  List<dynamic>? starships;
  String? created;
  String? edited;
  String? url;

  Person(
      {this.name,
      this.height,
      this.mass,
      this.hair_color,
      this.skin_color,
      this.eye_color,
      this.birth_year,
      this.gender,
      this.homeworld,
      this.films,
      this.species,
      this.vehicles,
      this.starships,
      this.created,
      this.edited,
      this.url});

  factory Person.fromjson(Map<String, dynamic> json) => Person(
      name: json[PersonInfoKeys.name],
      height: json[PersonInfoKeys.height],
      mass: json[PersonInfoKeys.mass],
      hair_color: json[PersonInfoKeys.hair_color],
      skin_color: json[PersonInfoKeys.skin_color],
      eye_color: json[PersonInfoKeys.eye_color],
      birth_year: json[PersonInfoKeys.birth_year],
      gender: json[PersonInfoKeys.gender],
      homeworld: json[PersonInfoKeys.homeworld],
      films: json[PersonInfoKeys.films],
      species: json[PersonInfoKeys.species],
      vehicles: json[PersonInfoKeys.vehicles],
      starships: json[PersonInfoKeys.starships],
      created: json[PersonInfoKeys.created],
      edited: json[PersonInfoKeys.edited],
      url: json[PersonInfoKeys.url]);
}
