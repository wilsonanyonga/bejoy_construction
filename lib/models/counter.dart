import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'counter.g.dart';

@JsonSerializable()
class CountLol extends Equatable {
  int count;

  CountLol({required this.count});

  factory CountLol.fromJson(Map<String, dynamic> json) =>
      _$CountLolFromJson(json);
  Map<String, dynamic> toJson() => _$CountLolToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [count];

  static List<CountLol> testCount = [
    CountLol(
      count: 1,
    ),
  ];
}
