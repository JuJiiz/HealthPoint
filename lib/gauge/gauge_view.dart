import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healtpoint/gauge/health_point_score_view.dart';
import 'package:healtpoint/gauge/health_point_view.dart';
import 'package:healtpoint/gauge/stat_view.dart';
import 'package:rive/rive.dart';

class GaugeView extends StatelessWidget {
  final RiveAnimationController riveController;

  const GaugeView({
    Key? key,
    required this.riveController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: LayoutBuilder(
              builder: (context, constraint) {
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SvgPicture.asset(
                      'assets/images/ic_hp_frame.svg',
                      height: constraint.maxWidth,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 36, left: 4),
                      child: HealthPointView(
                        riveController: riveController,
                        expectedWidth: constraint.maxWidth,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: const HealthPointScoreView(),
                    ),
                  ],
                );
              },
            ),
          ),
          const Expanded(flex: 1, child: StatView()),
        ],
      ),
    );
  }
}
