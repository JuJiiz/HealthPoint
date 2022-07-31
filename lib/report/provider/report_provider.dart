import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/mood/mood.dart';
import 'package:healtpoint/report/entity/daily_report_entity.dart';
import 'package:healtpoint/report/entity/mood_report_entity.dart';
import 'package:healtpoint/report/entity/report_entity.dart';
import 'package:healtpoint/report/entity/rest_report_entity.dart';
import 'package:healtpoint/report/provider/mood_reports_state_notifier.dart';
import 'package:healtpoint/report/provider/rest_reports_state_notifier.dart';
import 'package:intl/intl.dart';

final moodReportsProvider =
    StateNotifierProvider<MoodReportStateNotifier, List<MoodReportEntity>>(
        (ref) => MoodReportStateNotifier(ref));

final restReportsProvider =
    StateNotifierProvider<RestReportStateNotifier, List<RestReportEntity>>(
        (ref) => RestReportStateNotifier(ref));

final reportsProvider = StateProvider<DailyReportEntity>((ref) {
  final rests = ref.watch(restReportsProvider).map((e) {
    final sleepHour = e.endedAt.difference(e.startedAt).inHours;

    final startTime = DateFormat('HH:mm').format(e.startedAt);
    final endTime = DateFormat('HH:mm').format(e.endedAt);
    final title = 'นอน $sleepHour ชั่วโมง';
    final sleepTimeRange = '$startTime - $endTime';
    final int recoverPercent;
    final String recoverLabel;
    if (sleepHour <= 6) {
      final percent = sleepHour / 8 * 100;
      recoverLabel = '$percent%';
      recoverPercent = percent.toInt();
    } else if (sleepHour > 6 && sleepHour <= 9) {
      const percent = 100;
      recoverLabel = '$percent%';
      recoverPercent = percent;
    } else {
      final overRestHour = sleepHour - 8;
      final percent = 100 - (overRestHour / 8 * 10);
      recoverLabel = '$percent%';
      recoverPercent = percent.toInt();
    }

    return ReportEntity.rest(
      entity: e,
      title: title,
      sleepTimeRange: sleepTimeRange,
      recoverPercent: recoverPercent,
      recoverLabel: recoverLabel,
    );
  }).toList();

  final List<ReportEntity> moods = ref
      .watch(moodReportsProvider)
      .where((entity) =>
          entity.moodID == const Mood.angry().id ||
          entity.moodID == const Mood.average().id ||
          entity.moodID == const Mood.disgusting().id ||
          entity.moodID == const Mood.joy().id ||
          entity.moodID == const Mood.nervous().id ||
          entity.moodID == const Mood.productive().id ||
          entity.moodID == const Mood.sad().id ||
          entity.moodID == const Mood.tried().id)
      .map((entity) {
    Mood mood;
    if (entity.moodID == const Mood.angry().id) {
      mood = const Mood.angry();
    } else if (entity.moodID == const Mood.disgusting().id) {
      mood = const Mood.disgusting();
    } else if (entity.moodID == const Mood.joy().id) {
      mood = const Mood.joy();
    } else if (entity.moodID == const Mood.nervous().id) {
      mood = const Mood.nervous();
    } else if (entity.moodID == const Mood.productive().id) {
      mood = const Mood.productive();
    } else if (entity.moodID == const Mood.sad().id) {
      mood = const Mood.sad();
    } else if (entity.moodID == const Mood.tried().id) {
      mood = const Mood.tried();
    } else {
      mood = const Mood.average();
    }

    return ReportEntity.mood(
      entity: entity,
      mood: mood,
    );
  }).toList();

  ReportEntity? restReport;
  if (rests.isNotEmpty) restReport = rests.last;

  return DailyReportEntity(
    restReport: restReport,
    moodReports: moods,
  );
});
