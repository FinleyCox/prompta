// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_history_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PromptHistoryModelAdapter extends TypeAdapter<PromptHistoryModel> {
  @override
  final int typeId = 1;

  @override
  PromptHistoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PromptHistoryModel(
      id: fields[0] as String,
      promptId: fields[1] as String,
      title: fields[2] as String,
      trigger: fields[3] as String,
      character: fields[4] as String,
      content: fields[5] as String,
      isFavorite: fields[6] as bool,
      savedAt: fields[7] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, PromptHistoryModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.promptId)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.trigger)
      ..writeByte(4)
      ..write(obj.character)
      ..writeByte(5)
      ..write(obj.content)
      ..writeByte(6)
      ..write(obj.isFavorite)
      ..writeByte(7)
      ..write(obj.savedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PromptHistoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
