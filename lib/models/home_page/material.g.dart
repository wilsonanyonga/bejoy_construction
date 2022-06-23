// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Material _$MaterialFromJson(Map<String, dynamic> json) => Material(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['CreatedAt'] as String),
      updatedAt: DateTime.parse(json['UpdatedAt'] as String),
      deletedAt: json['DeletedAt'],
      stockId: json['stock_id'] as int,
      amount: json['amount'] as int,
      materialCreatedAt: DateTime.parse(json['created_at'] as String),
      materialUpdatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$MaterialToJson(Material instance) => <String, dynamic>{
      'id': instance.id,
      'CreatedAt': instance.createdAt.toIso8601String(),
      'UpdatedAt': instance.updatedAt.toIso8601String(),
      'DeletedAt': instance.deletedAt,
      'stock_id': instance.stockId,
      'amount': instance.amount,
      'created_at': instance.materialCreatedAt.toIso8601String(),
      'updated_at': instance.materialUpdatedAt.toIso8601String(),
    };
