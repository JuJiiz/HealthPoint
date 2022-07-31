import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healtpoint/gauge/gauge_view.dart';
import 'package:healtpoint/general/negative_confirm_dialog.dart';
import 'package:healtpoint/home/home_title_card_view.dart';
import 'package:healtpoint/report/entity/report_entity.dart';
import 'package:healtpoint/report/provider/report_provider.dart';
import 'package:healtpoint/report/widget/report_list_view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rive/rive.dart';
import 'package:share_plus/share_plus.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final GlobalKey repaintKey = GlobalKey();
  late RiveAnimationController riveController;

  @override
  void initState() {
    super.initState();
    riveController = SimpleAnimation('idle');
    ref.read(restReportsProvider.notifier).fetch();
    ref.read(moodReportsProvider.notifier).fetch();
  }

  _toggleHelp() {
    // TODO: open Help dialog
  }

  _toggleShare() async {
    RenderRepaintBoundary boundary =
        repaintKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage();
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List? pngBytes = byteData?.buffer.asUint8List();
    if (pngBytes != null) {
      final cacheDir = await getTemporaryDirectory();
      log('cacheDir.path: ${cacheDir.path}');
      File imgFile = File('${cacheDir.path}/hp-sharing.png');
      await imgFile.writeAsBytes(pngBytes);
      Share.shareFiles([imgFile.path]);
    }
  }

  _toggleAddMood() {
    final shouldRecordRestFirst = ref.read(reportsProvider).restReport == null;
    if (shouldRecordRestFirst) {
      Navigator.of(context).pushNamed('/add-rest');
    } else {
      Navigator.of(context).pushNamed('/add-mood');
    }
  }

  _onRemoveRestReport(ReportRest report) {
    final id = report.entity.id;
    if (id != null) {
      _showConfirmDialog(
        () => ref.read(restReportsProvider.notifier).remove(id),
      );
    }
  }

  _onRemoveMoodReport(ReportMood report) {
    final id = report.entity.id;
    if (id != null) {
      _showConfirmDialog(
        () => ref.read(moodReportsProvider.notifier).remove(id),
      );
    }
  }

  _showConfirmDialog(Function() onSubmit) {
    final page = NegativeConfirmDialog(
      title: 'ลบบันทึก',
      body: 'เธอต้องการที่จะลบบันทึกนี้ใช่มั้ย?',
      onToggleSubmit: onSubmit,
    );
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (dialogContext) => page,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).backgroundColor,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: HomeTitleCardView(onToggleShare: _toggleShare),
                      ),
                      RepaintBoundary(
                        key: repaintKey,
                        child: GaugeView(riveController: riveController),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'วันนี้เกิดอะไรขึ้นบ้าง',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                IconButton(
                                  onPressed: _toggleHelp,
                                  icon: SvgPicture.asset(
                                    'assets/images/ic_help.svg',
                                    width: 24,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 8),
                            ReportsListView(
                              onRemoveRestReport: _onRemoveRestReport,
                              onRemoveMoodReport: _onRemoveMoodReport,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              elevation: 0,
              onPressed: _toggleAddMood,
              backgroundColor: const Color(0xFF80CB5D),
              child: SvgPicture.asset(
                'assets/images/ic_add_white.svg',
                width: 32,
                height: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
