import 'package:flutter/material.dart';

class MoodVolumeThumbShape extends SliderComponentShape {
  final Color color;

  const MoodVolumeThumbShape({required this.color});

  static const Size _thumbSize = Size.fromHeight(24);

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return _thumbSize;
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    assert(sliderTheme.disabledThumbColor != null);
    assert(sliderTheme.thumbColor != null);

    final Canvas canvas = context.canvas;
    final double radius = _thumbSize.height;
    /*final Rect rect = Rect.fromCenter(
      center: center,
      width: radius * 1.5,
      height: radius * 3,
    );
    final rRectRadius = Radius.circular(radius / 2);
    final RRect rRect = RRect.fromRectAndCorners(
      rect,
      topLeft: rRectRadius,
      topRight: rRectRadius,
      bottomRight: rRectRadius,
      bottomLeft: rRectRadius,
    );
    final Path path = Path()..addRRect(rRect);*/
    final Rect rect = Rect.fromCircle(center: center, radius: radius);
    final Path path = Path()..addOval(rect);
    final Paint thumbPaint = Paint()..color = color;
    canvas.drawPath(path, thumbPaint);
  }
}
