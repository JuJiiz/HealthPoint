import 'package:flutter/material.dart';

class AppInputDecorationTheme extends InputDecorationTheme {
  const AppInputDecorationTheme();

  static const Color _focusedColor = Color(0xFF86ACE4);
  static const Color _errorColor = Color(0xFFE45959);
  static const Color _borderColor = Color(0xFFCACACA);

  @override
  EdgeInsetsGeometry get contentPadding => const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      );

  @override
  InputBorder get border => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        borderSide: BorderSide(color: _borderColor),
      );

  @override
  InputBorder get focusedBorder => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        borderSide: BorderSide(color: _focusedColor),
      );

  @override
  Color get focusColor => _focusedColor;

  @override
  InputBorder get errorBorder => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        borderSide: BorderSide(color: _errorColor),
      );

  @override
  TextStyle? get errorStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: _errorColor,
      );

  @override
  TextStyle get hintStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: _borderColor,
      );
}
