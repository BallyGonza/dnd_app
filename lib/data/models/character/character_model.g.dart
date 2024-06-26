// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterModelAdapter extends TypeAdapter<CharacterModel> {
  @override
  final int typeId = 0;

  @override
  CharacterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterModel(
      id: fields[0] as int,
      name: fields[1] as String,
      lastName: fields[2] as String,
      img: fields[3] as String,
      profileImg: fields[4] as String,
      banner: fields[5] as String,
      race: fields[6] as String,
      classes: (fields[7] as List).cast<String>(),
      level: fields[8] as int,
      armor: fields[9] as int,
      initiative: fields[10] as int,
      speed: fields[11] as int,
      passivePerception: fields[12] as int,
      hitDice: fields[13] as DiceModel,
      healthPoints: fields[14] as HealthPointsModel,
      abilities: (fields[15] as List).cast<AbilityModel>(),
      skills: (fields[16] as List).cast<SkillModel>(),
      savingThrows: (fields[17] as List).cast<SavingThrowModel>(),
      weapons: (fields[18] as List).cast<WeaponModel>(),
      languages: fields[19] as String,
      traits: (fields[20] as List).cast<TraitModel>(),
      spells: (fields[21] as List).cast<SpellModel>(),
      background: (fields[22] as List).cast<BackgroundModel>(),
      backstory: fields[23] as String,
      pets: (fields[24] as List).cast<AnimalModel>(),
      wildForms: (fields[25] as List).cast<AnimalModel>(),
      notes: (fields[26] as List).cast<Note>(),
      wallet: fields[27] as WalletModel,
      password: fields[28] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterModel obj) {
    writer
      ..writeByte(29)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.lastName)
      ..writeByte(3)
      ..write(obj.img)
      ..writeByte(4)
      ..write(obj.profileImg)
      ..writeByte(5)
      ..write(obj.banner)
      ..writeByte(6)
      ..write(obj.race)
      ..writeByte(7)
      ..write(obj.classes)
      ..writeByte(8)
      ..write(obj.level)
      ..writeByte(9)
      ..write(obj.armor)
      ..writeByte(10)
      ..write(obj.initiative)
      ..writeByte(11)
      ..write(obj.speed)
      ..writeByte(12)
      ..write(obj.passivePerception)
      ..writeByte(13)
      ..write(obj.hitDice)
      ..writeByte(14)
      ..write(obj.healthPoints)
      ..writeByte(15)
      ..write(obj.abilities)
      ..writeByte(16)
      ..write(obj.skills)
      ..writeByte(17)
      ..write(obj.savingThrows)
      ..writeByte(18)
      ..write(obj.weapons)
      ..writeByte(19)
      ..write(obj.languages)
      ..writeByte(20)
      ..write(obj.traits)
      ..writeByte(21)
      ..write(obj.spells)
      ..writeByte(22)
      ..write(obj.background)
      ..writeByte(23)
      ..write(obj.backstory)
      ..writeByte(24)
      ..write(obj.pets)
      ..writeByte(25)
      ..write(obj.wildForms)
      ..writeByte(26)
      ..write(obj.notes)
      ..writeByte(27)
      ..write(obj.wallet)
      ..writeByte(28)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
