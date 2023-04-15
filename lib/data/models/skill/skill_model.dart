import 'package:hive/hive.dart';

part 'skill_model.g.dart';

@HiveType(typeId: 7)
class SkillModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int modifier;
  @HiveField(2)
  final bool proficiency;

  SkillModel({
    required this.name,
    required this.modifier,
    required this.proficiency,
  });
}
