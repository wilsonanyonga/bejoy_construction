// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      data: (json['data'] as List<dynamic>)
          .map((e) => DatumProject.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int,
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };
