import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/gauge/provider/gauge_provider.dart';

class HealthPointScoreView extends ConsumerWidget {
  const HealthPointScoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(healthPointProvider);
    if (progress >= 0) {
      return Text(
        '$progress%',
        style: Theme.of(context).textTheme.titleSmall,
      );
    } else {
      return const SizedBox();
    }
  }
}
