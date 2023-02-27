import 'package:flutter/material.dart';
import 'package:mobilelms/core/theme/dark_theme.dart';
import 'package:mobilelms/core/theme/light_theme.dart';

class AppTheme {
  static ThemeData lightThemeData = themeData(lightColorScheme, 'light');
  static ThemeData darkThemeData = themeData(darkColorScheme, 'dark');

  static ThemeData themeData(ColorScheme colorScheme, theme) {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromRGBO(55, 210, 184, 1),
        brightness: theme == 'light' ? Brightness.light : Brightness.dark,
        tabBarTheme: ThemeData().tabBarTheme.copyWith(
              labelColor: colorScheme.onSurface,
              unselectedLabelColor: colorScheme.onSurfaceVariant,
              labelPadding: const EdgeInsets.all(8),
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: colorScheme.onSurface),
                ),
              ),
            ));
  }
}
