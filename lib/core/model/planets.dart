import 'package:flutter_group_3/core/model/models_constants/planets_info_keys.dart';

class Planets {
  String? name;
  String? rotation_period;
  String? orbital_period;
  String? diameter;
  String? climate;
  String? gravity;
  String? terrain;
  String? surface_water;
  String? population;
  String? created;
  String? edited;

  Planets({
    this.name,
    this.rotation_period,
    this.orbital_period,
    this.diameter,
    this.climate,
    this.gravity,
    this.terrain,
    this.surface_water,
    this.population,
    this.created,
    this.edited,
  });

  factory Planets.fromJson(Map<String, dynamic> json) => Planets(
        name: json[PlanetsInfoKeys.name],
        rotation_period: json[PlanetsInfoKeys.rotation_period],
        orbital_period: json[PlanetsInfoKeys.orbital_period],
        diameter: json[PlanetsInfoKeys.diameter],
        climate: json[PlanetsInfoKeys.climate],
        gravity: json[PlanetsInfoKeys.gravity],
        terrain: json[PlanetsInfoKeys.terrain],
        surface_water: json[PlanetsInfoKeys.surface_water],
        population: json[PlanetsInfoKeys.population],
        created: json[PlanetsInfoKeys.created],
        edited: json[PlanetsInfoKeys.edited],
      );
}
