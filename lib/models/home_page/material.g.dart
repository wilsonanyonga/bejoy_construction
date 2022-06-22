// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Material _$MaterialFromJson(Map<String, dynamic> json) => Material(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'],
      materialId: json['materialId'] as int,
      stockId: json['stockId'] as int,
      amount: json['amount'] as int,
      materialCreatedAt: DateTime.parse(json['materialCreatedAt'] as String),
      materialUpdatedAt: DateTime.parse(json['materialUpdatedAt'] as String),
    );

Map<String, dynamic> _$MaterialToJson(Material instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedAt': instance.deletedAt,
      'materialId': instance.materialId,
      'stockId': instance.stockId,
      'amount': instance.amount,
      'materialCreatedAt': instance.materialCreatedAt.toIso8601String(),
      'materialUpdatedAt': instance.materialUpdatedAt.toIso8601String(),
    };
