import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/gauge/stat_effect_view.dart';

class StatEffectProviderView extends ConsumerWidget {
  final Provider<double> stateProvider;

  const StatEffectProviderView({
    Key? key,
    required this.stateProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double effect = ref.watch(stateProvider);
    return StatEffectView(effect: effect);
  }
}
