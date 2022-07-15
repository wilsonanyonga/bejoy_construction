// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatumProject _$DatumProjectFromJson(Map<String, dynamic> json) => DatumProject(
      id: json['ID'] as int,
      createdAt: DateTime.parse(json['CreatedAt'] as String),
      updatedAt: DateTime.parse(json['UpdatedAt'] as String),
      deletedAt: json['DeletedAt'],
      datumId: json['id'] as int,
      name: json['name'] as String,
      location: json['location'] as String,
      datumCreatedAt: DateTime.parse(json['created_at'] as String),
      datumUpdatedAt: DateTime.parse(json['updated_at'] as String),
      stocks: json['Stocks'],
      pics: json['Pics'],
      receipts: json['Receipts'],
      tools: json['Tools'],
      staffs: json['Staffs'],
    );

Map<String, dynamic> _$DatumProjectToJson(DatumProject instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CreatedAt': instance.createdAt.toIso8601String(),
      'UpdatedAt': instance.updatedAt.toIso8601String(),
      'DeletedAt': instance.deletedAt,
      'id': instance.datumId,
      'name': instance.name,
      'location': instance.location,
      'created_at': instance.datumCreatedAt.toIso8601String(),
      'updated_at': instance.datumUpdatedAt.toIso8601String(),
      'Stocks': instance.stocks,
      'Pics': instance.pics,
      'Receipts': instance.receipts,
      'Tools': instance.tools,
      'Staffs': instance.staffs,
    };
