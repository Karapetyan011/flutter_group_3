import 'package:flutter_group_3/core/model/models_constants/my_info_keys.dart';

class People2{
  String? name;
  int? height;
  int? mass;
  String? hair_color;
  String? skin_color;
  String? eye_color;
  String? birth_year;
  String? gender;
  String? homeworld;
  dynamic films;
  dynamic species;
  dynamic vehicles;
  dynamic starships;
  dynamic created;
  dynamic edited;
  dynamic url;

  People2({
    this.name,
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
    this.url,

});
  factory People2.fromJson(Map <String, dynamic> json) => People2(
    name: json[MyPeopleInfoKeys.name],
    height: json[MyPeopleInfoKeys.height],
    mass: json[MyPeopleInfoKeys.mass],
    hair_color: json[MyPeopleInfoKeys.hair_color],
    skin_color: json[MyPeopleInfoKeys.skin_color],
    eye_color: json[MyPeopleInfoKeys.eye_color],
    birth_year: json[MyPeopleInfoKeys.birth_year],
    gender: json[MyPeopleInfoKeys.gender],
    homeworld: json[MyPeopleInfoKeys.homeworld],
    films: json[MyPeopleInfoKeys.films],
    species: json[MyPeopleInfoKeys.species],
    vehicles: json[MyPeopleInfoKeys.vehicles],
    starships: json[MyPeopleInfoKeys.starships],
    created: json[MyPeopleInfoKeys.created],
    edited: json[MyPeopleInfoKeys.edited],
    url: json[MyPeopleInfoKeys.url]
  );
}