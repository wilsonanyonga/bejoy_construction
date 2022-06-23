import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'material.g.dart';

@JsonSerializable()
class Material {
  int id;
  @JsonKey(name: 'CreatedAt')
  DateTime createdAt;
  @JsonKey(name: 'UpdatedAt')
  DateTime updatedAt;
  @JsonKey(name: 'DeletedAt')
  dynamic deletedAt;
  // @JsonKey(name: 'material_id')
  // int materialId;
  @JsonKey(name: 'stock_id')
  int stockId;
  int amount;
  @JsonKey(name: 'created_at')
  DateTime materialCreatedAt;
  @JsonKey(name: 'updated_at')
  DateTime materialUpdatedAt;

  Material({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    // required this.materialId,
    required this.stockId,
    required this.amount,
    required this.materialCreatedAt,
    required this.materialUpdatedAt,
  });

  factory Material.fromJson(Map<String, dynamic> json) =>
      _$MaterialFromJson(json);

  Map<String, dynamic> toJson() => _$MaterialToJson(this);
}
