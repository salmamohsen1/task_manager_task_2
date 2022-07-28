import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable()
class Task {
  final int id;
  final String title;
  final int isCompleted;
  final String date;
  final String startTime;
  final String endTime;
  final int color;
  final int remind;
  final String repeat;

  Task({
    required this.id,
    required this.title,
    required this.isCompleted,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.color,
    required this.remind,
    required this.repeat,
  });

  factory Task.fromJson(json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
