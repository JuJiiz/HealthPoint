import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healtpoint/report/entity/report_entity.dart';
import 'package:healtpoint/report/provider/report_provider.dart';
import 'package:healtpoint/report/widget/report_item_view.dart';

class ReportsListView extends ConsumerWidget {
  final Function(ReportRest) onRemoveRestReport;
  final Function(ReportMood) onRemoveMoodReport;

  const ReportsListView({
    Key? key,
    required this.onRemoveRestReport,
    required this.onRemoveMoodReport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reports = ref.watch(reportsProvider);

    List<ReportEntity> items = [];
    final restReport = reports.restReport;
    if (restReport != null) {
      items
        ..add(restReport)
        ..addAll(reports.moodReports);
    }

    if (items.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => ReportItemView(
          report: items[index],
          onRemoveRestReport: onRemoveRestReport,
          onRemoveMoodReport: onRemoveMoodReport,
        ),
      );
    } else {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/ic_mood_empty.svg',
              width: 64,
              height: 64,
            ),
            const SizedBox(height: 8),
            Text(
              'เธอยังไม่บอกเลย',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      );
    }
  }
}
