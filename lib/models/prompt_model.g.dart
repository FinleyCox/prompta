// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PromptModelAdapter extends TypeAdapter<PromptModel> {
  @override
  final int typeId = 0;

  @override
  PromptModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PromptModel(
      id: fields[0] as String,
      title: fields[1] as String,
      trigger: fields[2] as String,
      content: fields[3] as String,
      isFavorite: fields[4] as bool,
      createdAt: fields[5] as DateTime,
      updatedAt: fields[6] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, PromptModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.trigger)
      ..writeByte(3)
      ..write(obj.content)
      ..writeByte(4)
      ..write(obj.isFavorite)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PromptModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
