// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_report_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoodReportEntity _$$_MoodReportEntityFromJson(Map<String, dynamic> json) =>
    _$_MoodReportEntity(
      id: json['id'] as int?,
      title: json['title'] as String,
      moodID: json['moodID'] as int,
      volume: json['volume'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$_MoodReportEntityToJson(_$_MoodReportEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'moodID': instance.moodID,
      'volume': instance.volume,
      'createdAt': instance.createdAt.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
