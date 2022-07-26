class PeopleModel {
  String? name;
  String? height;
  String? mass;
  String? hairColor;
  String? skinColor;
  String? eyeColor;
  String? birthYear;
  String? gender;
  String? homeworld;
  List<String>? films;
  List<Null>? species;
  List<String>? vehicles;
  List<String>? starships;
  String? created;
  String? edited;
  String? url;

  PeopleModel(
      {this.name,
        this.height,
        this.mass,
        this.hairColor,
        this.skinColor,
        this.eyeColor,
        this.birthYear,
        this.gender,
        this.homeworld,
        this.films,
        this.species,
        this.vehicles,
        this.starships,
        this.created,
        this.edited,
        this.url});

  PeopleModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    height = json['height'];
    mass = json['mass'];
    hairColor = json['hair_color'];
    skinColor = json['skin_color'];
    eyeColor = json['eye_color'];
    birthYear = json['birth_year'];
    gender = json['gender'];
    homeworld = json['homeworld'];
    films = json['films'].cast<String>();
    vehicles = json['vehicles'].cast<String>();
    starships = json['starships'].cast<String>();
    created = json['created'];
    edited = json['edited'];
    url = json['url'];
  }
}