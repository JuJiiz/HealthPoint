import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healtpoint/mood/mood.dart';
import 'package:healtpoint/report/entity/mood_report_entity.dart';
import 'package:healtpoint/report/entity/rest_report_entity.dart';

part 'report_entity.freezed.dart';

@freezed
class ReportEntity with _$ReportEntity {
  const factory ReportEntity.mood({
    required MoodReportEntity entity,
    required Mood mood,
  }) = ReportMood;

  const factory ReportEntity.rest({
    required RestReportEntity entity,
    required String title,
    required String sleepTimeRange,
    required int recoverPercent,
    required String recoverLabel,
  }) = ReportRest;
}
