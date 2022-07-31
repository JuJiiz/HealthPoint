import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healtpoint/gauge/stat_effect_view.dart';
import 'package:healtpoint/report/entity/report_entity.dart';

class ReportItemView extends StatelessWidget {
  final ReportEntity report;
  final Function(ReportRest) onRemoveRestReport;
  final Function(ReportMood) onRemoveMoodReport;

  const ReportItemView({
    Key? key,
    required this.report,
    required this.onRemoveRestReport,
    required this.onRemoveMoodReport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return report.map(
      mood: (entity) => _ReportMoodItemView(
        report: entity,
        onRemoveReport: onRemoveMoodReport,
      ),
      rest: (entity) => _ReportRestItemView(
        report: entity,
        onRemoveReport: onRemoveRestReport,
      ),
    );
  }
}

class _ReportMoodItemView extends StatelessWidget {
  final double _statIconWidth = 24;
  final ReportMood report;
  final Function(ReportMood) onRemoveReport;

  const _ReportMoodItemView({
    super.key,
    required this.report,
    required this.onRemoveReport,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(report.mood.svgAsset, width: 64, height: 64),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  report.entity.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if (report.mood.strEffect != 0)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_stat_str.svg',
                          width: _statIconWidth,
                        ),
                        const SizedBox(width: 8),
                        StatEffectView(
                          effect: report.mood.strEffect.toDouble(),
                          iconSize: 8,
                        ),
                      ],
                    ),
                  ),
                if (report.mood.agiEffect != 0)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_stat_agi.svg',
                          width: _statIconWidth,
                        ),
                        const SizedBox(width: 8),
                        StatEffectView(
                          effect: report.mood.agiEffect.toDouble(),
                          iconSize: 8,
                        ),
                      ],
                    ),
                  ),
                if (report.mood.willEffect != 0)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_stat_will.svg',
                          width: _statIconWidth,
                        ),
                        const SizedBox(width: 8),
                        StatEffectView(
                          effect: report.mood.willEffect.toDouble(),
                          iconSize: 8,
                        ),
                      ],
                    ),
                  ),
                if (report.mood.intEffect != 0)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_stat_int.svg',
                          width: _statIconWidth,
                        ),
                        const SizedBox(width: 8),
                        StatEffectView(
                          effect: report.mood.intEffect.toDouble(),
                          iconSize: 8,
                        ),
                      ],
                    ),
                  ),
                if (report.mood.chaEffect != 0)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_stat_cha.svg',
                          width: _statIconWidth,
                        ),
                        const SizedBox(width: 8),
                        StatEffectView(
                          effect: report.mood.chaEffect.toDouble(),
                          iconSize: 8,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: 24,
            height: 24,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => onRemoveReport(report),
              icon: const Icon(Icons.close, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReportRestItemView extends StatelessWidget {
  final ReportRest report;
  final Function(ReportRest) onRemoveReport;

  const _ReportRestItemView({
    super.key,
    required this.report,
    required this.onRemoveReport,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'assets/images/ic_rest_activity.svg',
            width: 64,
            height: 64,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  report.title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                AutoSizeText(
                  report.sleepTimeRange,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/ic_hp_circle_item.svg',
                      height: 24,
                      width: 24,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      report.recoverLabel,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: 24,
            height: 24,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () => onRemoveReport(report),
              icon: const Icon(Icons.close, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
