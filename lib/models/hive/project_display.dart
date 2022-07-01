import 'package:hive/hive.dart';

part 'project_display.g.dart';

@HiveType(typeId: 1)
class ProjectDisplay {
  ProjectDisplay({required this.myId});
  @HiveField(0)
  int myId;

  // @HiveField(1)
  // int age;

  // @HiveField(2)
  // List<Person> friends;
}
