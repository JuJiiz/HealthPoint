import 'package:flutter/material.dart';

class HealthPointPainter {
  static Path getPath(double height) {
    final ratio = height / 500;
    final double width = 300 * ratio;
    Path path = Path();
    path.lineTo(width * 0.39, 0);
    path.cubicTo(
        width * 0.36, 0, width / 3, height * 0.01, width / 3, height * 0.02);
    path.cubicTo(width / 3, height * 0.02, width / 3, height * 0.08, width / 3,
        height * 0.08);
    path.cubicTo(width / 3, height * 0.08, width * 0.11, height * 0.08,
        width * 0.11, height * 0.08);
    path.cubicTo(
        width * 0.05, height * 0.08, 0, height * 0.1, 0, height * 0.13);
    path.cubicTo(0, height * 0.13, 0, height * 0.95, 0, height * 0.95);
    path.cubicTo(0, height * 0.98, width * 0.05, height, width * 0.11, height);
    path.cubicTo(
        width * 0.11, height, width * 0.89, height, width * 0.89, height);
    path.cubicTo(
        width * 0.95, height, width, height * 0.98, width, height * 0.95);
    path.cubicTo(
        width, height * 0.95, width, height * 0.13, width, height * 0.13);
    path.cubicTo(width, height * 0.1, width * 0.95, height * 0.08, width * 0.89,
        height * 0.08);
    path.cubicTo(width * 0.89, height * 0.08, width * 0.67, height * 0.08,
        width * 0.67, height * 0.08);
    path.cubicTo(width * 0.67, height * 0.08, width * 0.67, height * 0.02,
        width * 0.67, height * 0.02);
    path.cubicTo(width * 0.67, height * 0.01, width * 0.64, 0, width * 0.61, 0);
    path.cubicTo(width * 0.61, 0, width * 0.39, 0, width * 0.39, 0);
    path.cubicTo(width * 0.39, 0, width * 0.39, 0, width * 0.39, 0);

    return path;
    /*Path batteryPolePath = Path();
    batteryPolePath.lineTo(width / 3, height * 0.04);
    batteryPolePath.cubicTo(
        width / 3, height * 0.02, width * 0.36, 0, width * 0.39, 0);
    batteryPolePath.cubicTo(width * 0.39, 0, width * 0.61, 0, width * 0.61, 0);
    batteryPolePath.cubicTo(width * 0.64, 0, width * 0.67, height * 0.02,
        width * 0.67, height * 0.04);
    batteryPolePath.cubicTo(width * 0.67, height * 0.04, width * 0.67,
        height * 0.11, width * 0.67, height * 0.11);
    batteryPolePath.cubicTo(width * 0.67, height * 0.11, width / 3,
        height * 0.11, width / 3, height * 0.11);
    batteryPolePath.cubicTo(width / 3, height * 0.11, width / 3, height * 0.04,
        width / 3, height * 0.04);
    batteryPolePath.cubicTo(width / 3, height * 0.04, width / 3, height * 0.04,
        width / 3, height * 0.04);*/

    /*return Path.combine(
      PathOperation.union,
      batteryContainerPath,
      batteryPolePath,
    );*/
  }
}
