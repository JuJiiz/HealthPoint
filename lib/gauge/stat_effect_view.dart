import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class StatEffectView extends ConsumerWidget {
  final double effect;
  final double iconSize;

  const StatEffectView({
    Key? key,
    required this.effect,
    this.iconSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> effectWidgets = [];
    for (int index = 0; index < effect.abs(); index++) {
      final String assetImage;
      if (effect > 0) {
        assetImage = 'assets/images/ic_plus_stat.svg';
      } else {
        assetImage = 'assets/images/ic_minus_stat.svg';
      }
      final effectWidget = Container(
        padding: const EdgeInsets.only(left: 4),
        child: SvgPicture.asset(assetImage, width: iconSize),
      );
      effectWidgets.add(effectWidget);
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width / 6,
      child: Row(children: effectWidgets),
    );
  }
}
