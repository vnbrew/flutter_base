import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: lightColorScheme,
  useMaterial3: true,
  scaffoldBackgroundColor: lightColorScheme.surface, // Nền chính của ứng dụng
  appBarTheme: AppBarTheme(
    backgroundColor: lightColorScheme.primary,
    foregroundColor: lightColorScheme.onPrimary,
  ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: lightColorScheme.onSurface, // Chữ trên nền surface
        displayColor: lightColorScheme.onSurface,
      ),
);

final darkTheme = ThemeData(
  colorScheme: darkColorScheme,
  useMaterial3: true,
  scaffoldBackgroundColor: darkColorScheme.surface, // Nền chính của ứng dụng
  appBarTheme: AppBarTheme(
    backgroundColor: darkColorScheme.primary,
    foregroundColor: darkColorScheme.onPrimary,
  ),
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: darkColorScheme.onSurface, // Chữ trên nền surface
        displayColor: darkColorScheme.onSurface,
      ),
);

// Bộ màu Light mode
final lightColorScheme = ColorScheme.light(
  primary: Color(0xFF1565C0), // Xanh dương (Màu chính)
  onPrimary: Colors.white, // Chữ trên nền Primary
  secondary: Color(0xFFFFA726), // Cam vàng nhấn (Màu phụ)
  onSecondary: Colors.black, // Chữ trên nền Secondary
  surface: Color(0xFFF5F5F5), // Xám nhạt (Màu nền bề mặt chính)
  onSurface: Colors.black, // Chữ trên nền Surface
  error: Color(0xFFD32F2F), // Đỏ (Màu lỗi)
  onError: Colors.white, // Chữ trên nền Error
);

// Bộ màu Dark mode
final darkColorScheme = ColorScheme.dark(
  primary: Color(0xFF90CAF9), // Xanh dương nhạt (Màu chính)
  onPrimary: Colors.black, // Chữ trên nền Primary
  secondary: Color(0xFFFFB74D), // Cam vàng dịu (Màu phụ)
  onSecondary: Colors.black, // Chữ trên nền Secondary
  surface: Color(0xFF121212), // Xám rất tối (Màu nền bề mặt chính)
  onSurface: Colors.white, // Chữ trên nền Surface
  error: Color(0xFFCF6679), // Đỏ dịu (Màu lỗi)
  onError: Colors.black, // Chữ trên nền Error
);
