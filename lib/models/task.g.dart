// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      id: json['id'] as int,
      title: json['title'] as String,
      isCompleted: json['isCompleted'] as int,
      date: json['date'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      color: json['color'] as int,
      remind: json['remind'] as int,
      repeat: json['repeat'] as String,
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isCompleted': instance.isCompleted,
      'date': instance.date,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'color': instance.color,
      'remind': instance.remind,
      'repeat': instance.repeat,
    };
