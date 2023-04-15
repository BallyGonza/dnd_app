import 'package:hive/hive.dart';

part 'background_model.g.dart';

@HiveType(typeId: 4)
class BackgroundModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String description;

  BackgroundModel({
    required this.name,
    required this.description,
  });
}
