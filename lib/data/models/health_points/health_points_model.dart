import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'health_points_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class HealthPoints {
  @HiveField(0)
  int current;
  @HiveField(1)
  int max;

  HealthPoints({
    required this.current,
    required this.max,
  });

  void add() {
    current += 1;
    if (current > max) {
      current = max;
    }
  }

  void subtract() {
    current -= 1;
    if (current < 0) {
      current = 0;
    }
  }

  void reset() {
    current = max;
  }

  factory HealthPoints.fromJson(Map<String, dynamic> json) =>
      _$HealthPointsFromJson(json);

  Map<String, dynamic> toJson() => _$HealthPointsToJson(this);
}