import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_one.g.dart';

@JsonSerializable()
class Data extends Equatable {
  int id;
  String email;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  String avatar;

  Data({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [id, email, firstName, lastName, avatar];

  static List<Data> testy = [
    Data(
        id: 1,
        email: 'sdfo@f.com',
        avatar: '',
        firstName: 'sddsf',
        lastName: 'dfga'),
    Data(
        id: 1,
        email: 'sdfo@f.com',
        avatar: '',
        firstName: 'sddsf',
        lastName: 'dfga'),
    Data(
        id: 1,
        email: 'sdfo@f.com',
        avatar: '',
        firstName: 'sddsf',
        lastName: 'dfga'),
    Data(
        id: 1,
        email: 'sdfo@f.com',
        avatar: '',
        firstName: 'sddsf',
        lastName: 'dfga'),
  ];
}
