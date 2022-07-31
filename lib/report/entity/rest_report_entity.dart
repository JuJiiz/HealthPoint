
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rest_report_entity.freezed.dart';
part 'rest_report_entity.g.dart';

@freezed
class RestReportEntity with _$RestReportEntity {

  const factory RestReportEntity({
    int? id,
    required DateTime startedAt,
    required DateTime endedAt,
    required DateTime createdAt,
    DateTime? deletedAt,
  }) = _RestReportEntity;

  factory RestReportEntity.fromJson(Map<String, dynamic> json) =>
      _$RestReportEntityFromJson(json);
}