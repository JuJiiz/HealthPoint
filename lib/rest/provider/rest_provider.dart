import 'package:flutter_riverpod/flutter_riverpod.dart';

final startTimeProvider = StateProvider.autoDispose<DateTime?>((ref) => null);

final endTimeProvider = StateProvider.autoDispose<DateTime?>((ref) => null);
