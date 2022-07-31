import 'package:flutter/material.dart';

class AppElevatedButtonTheme extends ElevatedButtonThemeData {
  const AppElevatedButtonTheme();

  @override
  ButtonStyle? get style => ElevatedButton.styleFrom(
        elevation: 0,
        primary: const Color(0xFF80CB5D),
        onPrimary: Colors.white,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      );
}
