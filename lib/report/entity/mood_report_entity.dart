
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mood_report_entity.freezed.dart';
part 'mood_report_entity.g.dart';

@freezed
class MoodReportEntity with _$MoodReportEntity {

  const factory MoodReportEntity({
    int? id,
    required String title,
    required int moodID,
    required int volume,
    required DateTime createdAt,
    DateTime? deletedAt,
  }) = _MoodReportEntity;

  factory MoodReportEntity.fromJson(Map<String, dynamic> json) =>
      _$MoodReportEntityFromJson(json);
}