import 'package:flutter/material.dart';

/// define custom themes here
final lightMode = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primarySwatch: Colors.blue,
  backgroundColor: Colors.white,
  brightness: Brightness.light,
  splashColor: Colors.transparent,
);

final darkMode = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  primarySwatch: Colors.teal,
  backgroundColor: Colors.black,
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
);
