// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_display.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProjectDisplayAdapter extends TypeAdapter<ProjectDisplay> {
  @override
  final int typeId = 1;

  @override
  ProjectDisplay read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProjectDisplay(
      myId: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ProjectDisplay obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.myId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectDisplayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
