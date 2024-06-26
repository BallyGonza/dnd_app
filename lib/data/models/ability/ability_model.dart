import 'package:hive/hive.dart';

part 'ability_model.g.dart';

@HiveType(typeId: 3)
class AbilityModel {
  AbilityModel({
    required this.name,
    required this.score,
    required this.modifier,
  });
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int score;
  @HiveField(2)
  final int modifier;
}
