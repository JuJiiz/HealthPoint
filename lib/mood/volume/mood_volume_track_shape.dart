import 'package:flutter/material.dart';

class MoodVolumeTrackShape implements SliderTrackShape {
  final Color color;

  const MoodVolumeTrackShape({required this.color});

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = true,
    bool isDiscrete = true,
  }) {
    final SliderComponentShape? shape = sliderTheme.overlayShape;
    final Size? preferredSize = shape?.getPreferredSize(isEnabled, isDiscrete);
    final double overlayWidth = preferredSize?.width ?? 0;
    final double trackHeight = sliderTheme.trackHeight ?? 0;

    final double trackLeft = offset.dx + overlayWidth / 2;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width - overlayWidth;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    bool isEnabled = true,
    bool isDiscrete = true,
    required TextDirection textDirection,
  }) {
    final Paint innerPaint = Paint()..color = const Color(0xFFFFFFFF);
    final Paint outerPaint = Paint()..color = color;

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    const Radius radius = Radius.circular(32);

    final halfOfThumbHeight = thumbCenter.dy / 2;
    final oneOfThreeOfThumbHeight = thumbCenter.dy / 3;
    final RRect outerTrackSegment = RRect.fromLTRBR(
      trackRect.left - thumbCenter.dy,
      trackRect.top - halfOfThumbHeight,
      trackRect.right + thumbCenter.dy,
      trackRect.bottom + halfOfThumbHeight,
      radius,
    );
    context.canvas.drawRRect(outerTrackSegment, outerPaint);

    final RRect innerTrackSegment = RRect.fromLTRBR(
      trackRect.left + oneOfThreeOfThumbHeight - thumbCenter.dy,
      trackRect.top - halfOfThumbHeight + oneOfThreeOfThumbHeight,
      trackRect.right - oneOfThreeOfThumbHeight + thumbCenter.dy,
      trackRect.bottom + halfOfThumbHeight - oneOfThreeOfThumbHeight,
      radius,
    );
    context.canvas.drawRRect(innerTrackSegment, innerPaint);
  }
}
