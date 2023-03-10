import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'spell_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 8)
class Spell {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int level;
  @HiveField(2)
  final String range;
  @HiveField(3)
  final String castTime;
  @HiveField(4)
  final String duration;
  @HiveField(5)
  final String comp;
  @HiveField(6)
  final String description;

  Spell({
    required this.name,
    required this.level,
    required this.range,
    required this.castTime,
    required this.duration,
    required this.comp,
    required this.description,
  });

  factory Spell.fromJson(Map<String, dynamic> json) => _$SpellFromJson(json);

  Map<String, dynamic> toJson() => _$SpellToJson(this);
}