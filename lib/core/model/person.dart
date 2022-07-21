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

  Person({
    this.name,
    this.height,
    this.mass,
    this.hair_color,
    this.skin_color,
    this.eye_color,
    this.birth_year,
    this.gender,


  });

  factory Person.fromJson(Map<String, dynamic> json) => Person(
    name: json[PersonInfoKeys.name],
    height: json[PersonInfoKeys.height],
    mass: json[PersonInfoKeys.mass],
    hair_color: json[PersonInfoKeys.hair_color],
    skin_color: json[PersonInfoKeys.skin_color],
    eye_color: json[PersonInfoKeys.eye_color],
    birth_year: json[PersonInfoKeys.birth_year],
    gender: json[PersonInfoKeys.gender],
  );
}
