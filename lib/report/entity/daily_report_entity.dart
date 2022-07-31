import 'package:healtpoint/report/entity/report_entity.dart';

class DailyReportEntity {
  final ReportEntity? restReport;
  final List<ReportEntity> moodReports;

  DailyReportEntity({
    required this.restReport,
    required this.moodReports,
  });
}
