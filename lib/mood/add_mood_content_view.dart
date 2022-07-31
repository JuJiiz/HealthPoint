import 'package:flutter/material.dart';
import 'package:healtpoint/mood/mood.dart';
import 'package:healtpoint/mood/volume/mood_volume_view.dart';
import 'package:healtpoint/mood/wheel/mood_wheel_view.dart';

class AddMoodContentView extends StatelessWidget {
  final TextEditingController titleController;
  final Function(Mood) onSelectMood;
  final Function(double, bool) onVolumeChanged;
  final Function() onToggleSubmit;

  const AddMoodContentView({
    Key? key,
    required this.titleController,
    required this.onSelectMood,
    required this.onVolumeChanged,
    required this.onToggleSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'แบ่งปันเรื่องราวของเธอ',
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        MoodWheelView(onSelectMood: onSelectMood),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                'เกิดอะไรขึ้น ?',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 4),
              TextField(controller: titleController),
              const SizedBox(height: 16),
              Text(
                'ระดับของอารมณ์',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 4),
              MoodVolumeView(onVolumeChanged: onVolumeChanged),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onToggleSubmit,
                  child: const Text(
                    'ยืนยัน',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
