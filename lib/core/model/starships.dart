import 'package:flutter_group_3/core/model/models_constants/starship_info_keys.dart';

class Starships {
  String? name;
  String? model;
  String? manufacturer;
  String? cost_in_credits;
  String? length;
  String? max_atmosphering_speed;
  String? crew;
  String? passengers;
  String? cargo_capacity;
  String? consumables;
  String? hyperdrive_rating;
  String? MGLT;
  String? starship_class;
  String? created;
  String? edited;

  Starships({
    this.name,
    this.model,
    this.manufacturer,
    this.cost_in_credits,
    this.length,
    this.max_atmosphering_speed,
    this.crew,
    this.passengers,
    this.cargo_capacity,
    this.consumables,
    this.hyperdrive_rating,
    this.MGLT,
    this.starship_class,
    this.created,
    this.edited,
  });

  factory Starships.fromJson(Map<String, dynamic> json) => Starships(
        name: json[Starship_info_keys.name],
        model: json[Starship_info_keys.model],
        manufacturer: json[Starship_info_keys.manufacturer],
        cost_in_credits: json[Starship_info_keys.cost_in_credits],
        length: json[Starship_info_keys.length],
        max_atmosphering_speed: json[Starship_info_keys.max_atmosphering_speed],
        crew: json[Starship_info_keys.crew],
        passengers: json[Starship_info_keys.passengers],
        cargo_capacity: json[Starship_info_keys.cargo_capacity],
        consumables: json[Starship_info_keys.consumables],
        hyperdrive_rating: json[Starship_info_keys.hyperdrive_rating],
        MGLT: json[Starship_info_keys.MGLT],
        starship_class: json[Starship_info_keys.starship_class],
        created: json[Starship_info_keys.created],
        edited: json[Starship_info_keys.edited],
      );
}
