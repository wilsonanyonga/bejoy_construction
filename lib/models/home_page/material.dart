import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'material.g.dart';

@JsonSerializable()
class Material {
  Material({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.materialId,
    required this.stockId,
    required this.amount,
    required this.materialCreatedAt,
    required this.materialUpdatedAt,
  });

  int id;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  int materialId;
  int stockId;
  int amount;
  DateTime materialCreatedAt;
  DateTime materialUpdatedAt;

  factory Material.fromJson(Map<String, dynamic> json) =>
      _$MaterialFromJson(json);

  Map<String, dynamic> toJson() => _$MaterialToJson(this);
}
