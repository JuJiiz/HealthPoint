// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_report_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestReportEntity _$$_RestReportEntityFromJson(Map<String, dynamic> json) =>
    _$_RestReportEntity(
      id: json['id'] as int?,
      startedAt: DateTime.parse(json['startedAt'] as String),
      endedAt: DateTime.parse(json['endedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$_RestReportEntityToJson(_$_RestReportEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startedAt': instance.startedAt.toIso8601String(),
      'endedAt': instance.endedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
