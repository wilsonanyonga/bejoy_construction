import 'package:bejoy_construction/models/projectData/data.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  List<DatumProject> data;
  int status;

  Project({
    required this.data,
    required this.status,
  });

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
