import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/mood/provider/mood_provider.dart';
import 'package:healtpoint/mood/volume/mood_volume_thumb_shape.dart';
import 'package:healtpoint/mood/volume/mood_volume_track_shape.dart';

class MoodVolumeView extends ConsumerWidget {
  final Function(double, bool) onVolumeChanged;

  const MoodVolumeView({
    super.key,
    required this.onVolumeChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSelection = ref.watch(addMoodSelectionProvider);
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 24,
        trackShape: MoodVolumeTrackShape(
          color: currentSelection.mood.color.withAlpha(80),
        ),
        thumbShape: MoodVolumeThumbShape(
          color: currentSelection.mood.color,
        ),
      ),
      child: Slider(
        min: 1,
        max: 5,
        value: currentSelection.volume,
        onChangeEnd: (value) => onVolumeChanged(value, true),
        onChanged: (value) => onVolumeChanged(value, false),
      ),
    );
  }
}
