import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healtpoint/report/provider/report_provider.dart';
import 'package:healtpoint/rest/provider/rest_provider.dart';
import 'package:healtpoint/rest/selected_time_view.dart';

class AddRestPage extends ConsumerStatefulWidget {
  const AddRestPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddRestPageState();
}

class _AddRestPageState extends ConsumerState<AddRestPage> {
  _togglePickStartTime() {
    final currentStart = ref.read(startTimeProvider) ?? DateTime.now();
    DatePicker.showTimePicker(
      context,
      locale: LocaleType.th,
      showSecondsColumn: false,
      currentTime: currentStart,
      onConfirm: (selectedStartTime) =>
          ref.read(startTimeProvider.notifier).state = selectedStartTime,
    );
  }

  _togglePickEndTime() {
    final currentEnd = ref.read(endTimeProvider) ?? DateTime.now();
    DatePicker.showTimePicker(
      context,
      locale: LocaleType.th,
      showSecondsColumn: false,
      currentTime: currentEnd,
      onConfirm: (selectedEndTime) =>
          ref.read(endTimeProvider.notifier).state = selectedEndTime,
    );
  }

  _toggleSubmit() async {
    final start = ref.read(startTimeProvider);
    final end = ref.read(endTimeProvider);
    if (start != null && end != null) {
      await ref.read(restReportsProvider.notifier).add(start, end);
      _goBack();
    }
  }

  _goBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 16,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'การนอนเป็นยังไงบ้าง ?',
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    SvgPicture.asset(
                      'assets/images/ic_rest_dialog.svg',
                      width: MediaQuery.of(context).size.width / 3 * 2,
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SelectedTimeView(
                            title: 'เริ่มเข้านอน',
                            provider: startTimeProvider,
                            onTap: _togglePickStartTime,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          flex: 1,
                          child: SelectedTimeView(
                            title: 'ตื่นนอน',
                            provider: endTimeProvider,
                            onTap: _togglePickEndTime,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _toggleSubmit,
                    child: const Text(
                      'ยืนยัน',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
