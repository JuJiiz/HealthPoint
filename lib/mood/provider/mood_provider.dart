import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/mood/add_mood_selection_entity.dart';
import 'package:healtpoint/mood/mood.dart';

final selectedMoodProvider =
    StateProvider.autoDispose<Mood>((ref) => const Mood.average());

final moodVolumeProvider = StateProvider.autoDispose<double>((ref) => 1);

final addMoodSelectionProvider =
    StateProvider.autoDispose<AddMoodSelectionEntity>((ref) {
  final volume = ref.watch(moodVolumeProvider);
  final mood = ref.watch(selectedMoodProvider);
  return AddMoodSelectionEntity(volume: volume, mood: mood);
});
