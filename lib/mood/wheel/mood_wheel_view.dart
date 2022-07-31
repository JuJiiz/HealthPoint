import 'package:flutter/material.dart';
import 'package:healtpoint/mood/mood.dart';
import 'package:healtpoint/mood/wheel/mood_wheel_item_view.dart';

class MoodWheelView extends StatelessWidget {
  static const double paddingSize = 4;
  final Function(Mood) onSelectMood;

  const MoodWheelView({
    Key? key,
    required this.onSelectMood,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final itemSize = MediaQuery.of(context).size.width / 4;
    return SizedBox(
      width: width,
      height: width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(paddingSize),
                    child: MoodWheelItemView(
                      mood: const Mood.sad(),
                      imageAsset: 'assets/images/ic_mood_sad.svg',
                      onSelectMood: onSelectMood,
                      size: itemSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: itemSize * 0.75,
            left: 0,
            child: SizedBox(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(paddingSize),
                    child: MoodWheelItemView(
                      mood: const Mood.disgusting(),
                      imageAsset: 'assets/images/ic_mood_disgusting.svg',
                      onSelectMood: onSelectMood,
                      size: itemSize,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(paddingSize),
                    child: SizedBox(width: itemSize, height: itemSize),
                  ),
                  Container(
                    padding: const EdgeInsets.all(paddingSize),
                    child: MoodWheelItemView(
                      mood: const Mood.tried(),
                      imageAsset: 'assets/images/ic_mood_tried.svg',
                      onSelectMood: onSelectMood,
                      size: itemSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: width / 2 - itemSize / 2,
            left: 0,
            child: SizedBox(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(paddingSize),
                    child: MoodWheelItemView(
                      mood: const Mood.average(),
                      imageAsset: 'assets/images/ic_mood_average.svg',
                      onSelectMood: onSelectMood,
                      size: itemSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: itemSize,
            left: 0,
            child: SizedBox(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(paddingSize),
                    child: MoodWheelItemView(
                      mood: const Mood.angry(),
                      imageAsset: 'assets/images/ic_mood_angry.svg',
                      onSelectMood: onSelectMood,
                      size: itemSize,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(paddingSize),
                    child: SizedBox(width: itemSize, height: itemSize),
                  ),
                  Container(
                    padding: const EdgeInsets.all(paddingSize),
                    child: MoodWheelItemView(
                      mood: const Mood.nervous(),
                      imageAsset: 'assets/images/ic_mood_nervous.svg',
                      onSelectMood: onSelectMood,
                      size: itemSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(paddingSize),
                    child: MoodWheelItemView(
                      mood: const Mood.joy(),
                      imageAsset: 'assets/images/ic_mood_joy.svg',
                      onSelectMood: onSelectMood,
                      size: itemSize,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(paddingSize),
                    child: SizedBox(
                      height: itemSize / 10,
                      width: itemSize / 10,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(paddingSize),
                    child: MoodWheelItemView(
                      mood: const Mood.productive(),
                      imageAsset: 'assets/images/ic_mood_productive.svg',
                      onSelectMood: onSelectMood,
                      size: itemSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    /*Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(paddingSize),
              child: MoodWheelItemView(
                mood: const Mood.sad(),
                imageAsset: 'assets/images/ic_mood_sad.svg',
                onSelectMood: onSelectMood,
                size: itemSize,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(paddingSize),
              child: MoodWheelItemView(
                mood: const Mood.disgusting(),
                imageAsset: 'assets/images/ic_mood_disgusting.svg',
                onSelectMood: onSelectMood,
                size: itemSize,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(paddingSize),
              child: SizedBox(width: itemSize, height: itemSize),
            ),
            Container(
              padding: const EdgeInsets.all(paddingSize),
              child: MoodWheelItemView(
                mood: const Mood.tried(),
                imageAsset: 'assets/images/ic_mood_tried.svg',
                onSelectMood: onSelectMood,
                size: itemSize,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(paddingSize),
              child: MoodWheelItemView(
                mood: const Mood.average(),
                imageAsset: 'assets/images/ic_mood_average.svg',
                onSelectMood: onSelectMood,
                size: itemSize,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(paddingSize),
              child: MoodWheelItemView(
                mood: const Mood.angry(),
                imageAsset: 'assets/images/ic_mood_angry.svg',
                onSelectMood: onSelectMood,
                size: itemSize,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(paddingSize),
              child: SizedBox(width: itemSize, height: itemSize),
            ),
            Container(
              padding: const EdgeInsets.all(paddingSize),
              child: MoodWheelItemView(
                mood: const Mood.nervous(),
                imageAsset: 'assets/images/ic_mood_nervous.svg',
                onSelectMood: onSelectMood,
                size: itemSize,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(paddingSize),
              child: MoodWheelItemView(
                mood: const Mood.joy(),
                imageAsset: 'assets/images/ic_mood_joy.svg',
                onSelectMood: onSelectMood,
                size: itemSize,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(paddingSize),
              child: MoodWheelItemView(
                mood: const Mood.productive(),
                imageAsset: 'assets/images/ic_mood_productive.svg',
                onSelectMood: onSelectMood,
                size: itemSize,
              ),
            ),
          ],
        ),
      ],
    );*/
  }
}
