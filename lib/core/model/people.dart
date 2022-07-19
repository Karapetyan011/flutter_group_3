
import 'models_constants/people_info_keys.dart';

class People {
  int? count;
  String? next;
  String? previous;
  dynamic results;

  People({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory People.fromJson(Map<String, dynamic> json) => People(
        count: json[PeopleInfoKeys.count],
        next: json[PeopleInfoKeys.next],
        previous: json[PeopleInfoKeys.previous],
        results: json[PeopleInfoKeys.results],
      );
}
