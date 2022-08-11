import 'package:flutter_group_3/core/model/models_constants/films_info_keys.dart';

class Films {
  String? title;
  int? episode_id;
  String? opening_crawl;
  String? director;
  String? producer;
  String? release_date;


  Films({
    this.title,
    this.episode_id,
    this.opening_crawl,
    this.director,
    this.producer,
    this.release_date,

  });

  factory Films.fromJson(Map<String, dynamic> json) => Films(
        title: json[FilmsInfoKeys.title],
        episode_id: json[FilmsInfoKeys.episode_id],
        opening_crawl: json[FilmsInfoKeys.opening_crawl],
        director: json[FilmsInfoKeys.director],
        producer: json[FilmsInfoKeys.producer],
        release_date: json[FilmsInfoKeys.release_date],

      );
}
