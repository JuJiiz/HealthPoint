import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healtpoint/gauge/provider/gauge_provider.dart';
import 'package:healtpoint/gauge/stat_effect_provider_view.dart';

class StatView extends ConsumerWidget {
  final double _statIconWidth = 36;

  const StatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shouldShow = ref.watch(shouldShowStatViewProvider);
    if (shouldShow) {
      return Container(
        /*decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(16),
        ),*/
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ระดับความสามารถ',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/images/ic_stat_str.svg',
                  width: _statIconWidth,
                ),
                const SizedBox(width: 8),
                StatEffectProviderView(stateProvider: statEffectStrProvider),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/images/ic_stat_int.svg',
                  width: _statIconWidth,
                ),
                const SizedBox(width: 8),
                StatEffectProviderView(stateProvider: statEffectIntProvider),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/images/ic_stat_agi.svg',
                  width: _statIconWidth,
                ),
                const SizedBox(width: 8),
                StatEffectProviderView(stateProvider: statEffectAgiProvider),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/images/ic_stat_cha.svg',
                  width: _statIconWidth,
                ),
                const SizedBox(width: 8),
                StatEffectProviderView(stateProvider: statEffectChaProvider),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/images/ic_stat_will.svg',
                  width: _statIconWidth,
                ),
                const SizedBox(width: 8),
                StatEffectProviderView(stateProvider: statEffectWillProvider),
              ],
            ),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
