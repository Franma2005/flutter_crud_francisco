import 'package:flutter/material.dart';

class AppTheme {
  static const MaterialColor primary = Colors.indigo;

  static final ThemeData light = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: primary
    )
  );
}