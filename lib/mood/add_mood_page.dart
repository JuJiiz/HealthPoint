import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/mood/add_mood_content_view.dart';
import 'package:healtpoint/mood/mood.dart';
import 'package:healtpoint/mood/provider/mood_provider.dart';
import 'package:healtpoint/report/entity/mood_report_entity.dart';
import 'package:healtpoint/report/provider/report_provider.dart';

class AddMoodPage extends ConsumerStatefulWidget {
  const AddMoodPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddMoodPageState();
}

class _AddMoodPageState extends ConsumerState<AddMoodPage> {
  final TextEditingController addMoodTitleController = TextEditingController();

  _onSelectMood(Mood mood) {
    ref.read(selectedMoodProvider.notifier).state = mood;
  }

  _onMoodVolumeChange(double volume, bool shouldRemoveDecimal) {
    if (shouldRemoveDecimal) {
      ref.read(moodVolumeProvider.notifier).state = volume.roundToDouble();
    } else {
      ref.read(moodVolumeProvider.notifier).state = volume;
    }
  }

  _onToggleSubmitToAddMood() async {
    final title = addMoodTitleController.value.text;
    final selectedMood = ref.read(selectedMoodProvider);
    final moodVolume = ref.read(moodVolumeProvider);
    if (title.isNotEmpty) {
      final entity = MoodReportEntity(
        title: title,
        moodID: selectedMood.id,
        volume: moodVolume.round(),
        createdAt: DateTime.now(),
      );
      await ref.read(moodReportsProvider.notifier).add(entity);
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
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: AddMoodContentView(
              titleController: addMoodTitleController,
              onSelectMood: _onSelectMood,
              onVolumeChanged: _onMoodVolumeChange,
              onToggleSubmit: _onToggleSubmitToAddMood,
            ),
          ),
        ),
      ),
    );
  }
}
