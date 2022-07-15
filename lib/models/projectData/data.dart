import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'data.g.dart';

@JsonSerializable()
class DatumProject {
  @JsonKey(name: 'ID')
  int id;
  @JsonKey(name: 'CreatedAt')
  DateTime createdAt;
  @JsonKey(name: 'UpdatedAt')
  DateTime updatedAt;
  @JsonKey(name: 'DeletedAt')
  dynamic deletedAt;
  @JsonKey(name: 'id')
  int datumId;
  String name;
  String location;
  @JsonKey(name: 'created_at')
  DateTime datumCreatedAt;
  @JsonKey(name: 'updated_at')
  DateTime datumUpdatedAt;
  @JsonKey(name: 'Stocks')
  dynamic stocks;
  @JsonKey(name: 'Pics')
  dynamic pics;
  @JsonKey(name: 'Receipts')
  dynamic receipts;
  @JsonKey(name: 'Tools')
  dynamic tools;
  @JsonKey(name: 'Staffs')
  dynamic staffs;

  DatumProject({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.datumId,
    required this.name,
    required this.location,
    required this.datumCreatedAt,
    required this.datumUpdatedAt,
    required this.stocks,
    required this.pics,
    required this.receipts,
    required this.tools,
    required this.staffs,
  });

  factory DatumProject.fromJson(Map<String, dynamic> json) =>
      _$DatumProjectFromJson(json);

  Map<String, dynamic> toJson() => _$DatumProjectToJson(this);
}
