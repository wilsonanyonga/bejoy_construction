import 'package:bejoy_construction/models/home_page/datum.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'home_page.g.dart';

@JsonSerializable()
// class Data {
//   Data({
//     required this.id,
//     required this.project_id,
//     required this.materials_name,
//     required this.materials,

//     "project_id": 1,
//     "materials_name": "Cement",
//     "created_at": "2022-05-03T00:00:00+03:00",
//     "updated_at": "2022-05-21T00:00:00+03:00",
//     "Materials": null
//   });

//   int id;
//   String email;
//   @JsonKey(name: 'first_name')
//   String firstName;
//   @JsonKey(name: 'last_name')
//   String lastName;
//   String avatar;

//   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

//   Map<String, dynamic> toJson() => _$DataToJson(this);
// }

class HomePage {
  List<Datum> data;
  int status;

  HomePage({
    required this.data,
    required this.status,
  });

  factory HomePage.fromJson(Map<String, dynamic> json) =>
      _$HomePageFromJson(json);

  Map<String, dynamic> toJson() => _$HomePageToJson(this);
}
