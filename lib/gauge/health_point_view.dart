import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/gauge/provider/gauge_provider.dart';
import 'package:rive/rive.dart';

class HealthPointView extends ConsumerWidget {
  final double expectedWidth;
  final RiveAnimationController riveController;

  const HealthPointView({
    Key? key,
    required this.expectedWidth,
    required this.riveController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(healthPointProvider);
    if (progress >= 0) {
      final maxSize = (expectedWidth / 10 * 4) * progress / 100;
      return SizedBox(
        height: maxSize,
        child: const RiveAnimation.asset('assets/rives/fire.riv'),
      );
    } else {
      return const SizedBox();
    }
  }
}
