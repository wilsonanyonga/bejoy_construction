import 'package:bejoy_construction/models/home_page/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  Datum({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.datumId,
    required this.projectId,
    required this.materialsName,
    required this.datumCreatedAt,
    required this.datumUpdatedAt,
    required this.materials,
  });

  int id;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  int datumId;
  int projectId;
  String materialsName;
  DateTime datumCreatedAt;
  DateTime datumUpdatedAt;
  List<Material> materials;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
