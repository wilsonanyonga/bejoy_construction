// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'],
      datumId: json['datumId'] as int,
      projectId: json['projectId'] as int,
      materialsName: json['materialsName'] as String,
      datumCreatedAt: DateTime.parse(json['datumCreatedAt'] as String),
      datumUpdatedAt: DateTime.parse(json['datumUpdatedAt'] as String),
      materials: (json['materials'] as List<dynamic>)
          .map((e) => Material.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedAt': instance.deletedAt,
      'datumId': instance.datumId,
      'projectId': instance.projectId,
      'materialsName': instance.materialsName,
      'datumCreatedAt': instance.datumCreatedAt.toIso8601String(),
      'datumUpdatedAt': instance.datumUpdatedAt.toIso8601String(),
      'materials': instance.materials,
    };
