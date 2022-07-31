import 'package:flutter/material.dart';

class AppTextTheme extends TextTheme {
  const AppTextTheme();

  static const FontWeight _titleFontWeight = FontWeight.w600;
  static const FontWeight _bodyFontWeight = FontWeight.w400;
  static const Color _fontColor = Color(0xFF151515);

  static const TextStyle _titleTextStyle = TextStyle(
    fontWeight: _titleFontWeight,
    color: _fontColor,
  );

  static const TextStyle _bodyTextStyle = TextStyle(
    fontWeight: _bodyFontWeight,
    color: _fontColor,
  );

  @override
  TextStyle get titleLarge => _titleTextStyle.copyWith(fontSize: 20);

  @override
  TextStyle get titleMedium => _titleTextStyle.copyWith(fontSize: 18);

  @override
  TextStyle get titleSmall => _titleTextStyle.copyWith(fontSize: 16);

  @override
  TextStyle get bodyLarge => _bodyTextStyle.copyWith(fontSize: 18);

  @override
  TextStyle get bodyMedium => _bodyTextStyle.copyWith(fontSize: 16);

  @override
  TextStyle get bodySmall => _bodyTextStyle.copyWith(fontSize: 14);

  @override
  TextStyle get caption => const TextStyle(
        fontSize: 16,
        fontWeight: _bodyFontWeight,
        color: Color(0xFF9A9A9A),
      );

  @override
  TextStyle get button => const TextStyle(
        fontSize: 18,
        fontWeight: _titleFontWeight,
        color: Colors.white,
      );
}
