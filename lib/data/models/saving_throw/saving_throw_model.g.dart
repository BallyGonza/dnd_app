// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saving_throw_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavingThrowModelAdapter extends TypeAdapter<SavingThrowModel> {
  @override
  final int typeId = 6;

  @override
  SavingThrowModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavingThrowModel(
      name: fields[0] as String,
      modifier: fields[1] as int,
      proficiency: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, SavingThrowModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.modifier)
      ..writeByte(2)
      ..write(obj.proficiency);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavingThrowModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
