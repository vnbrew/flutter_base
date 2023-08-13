import 'package:flutter/material.dart';

/// define custom themes here
final lightMode = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primarySwatch: Colors.blue,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  ),
  brightness: Brightness.light,
  splashColor: Colors.transparent,
);

final darkMode = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  primarySwatch: Colors.teal,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.teal,
    backgroundColor: Colors.black,
    brightness: Brightness.dark,
  ),
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
);
