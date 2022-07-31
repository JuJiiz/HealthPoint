import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healtpoint/mood/mood.dart';

class MoodWheelItemView extends StatelessWidget {
  final Mood mood;
  final String imageAsset;
  final Function(Mood) onSelectMood;
  final double? size;

  const MoodWheelItemView({
    Key? key,
    required this.mood,
    required this.imageAsset,
    required this.onSelectMood,
     this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).cardColor,
      ),
      child: GestureDetector(
        onTap: () => onSelectMood(mood),
        child: SvgPicture.asset(imageAsset),
      ),
    );
  }
}
