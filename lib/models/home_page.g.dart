// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePage _$HomePageFromJson(Map<String, dynamic> json) => HomePage(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int,
    );

Map<String, dynamic> _$HomePageToJson(HomePage instance) => <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };
