import 'package:effective_test_work/src/themes/app_sizes.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:effective_test_work/src/themes/text/app_text_scheme.dart';
import 'package:flutter/material.dart';

/// Class of the app themes data.
abstract class AppThemeData {
  /// Dark theme configuration.
  static final darkTheme = ThemeData(
    fontFamily: 'SF-Pro-Display',
    extensions: [_darkColorScheme, _textScheme],
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: _darkColorScheme.primary,
      onPrimary: _darkColorScheme.onPrimary,
      secondary: _darkColorScheme.secondary,
      onSecondary: _darkColorScheme.onSecondary,
      error: _darkColorScheme.danger,
      onError: _darkColorScheme.onDanger,
      background: _darkColorScheme.background,
      onBackground: _darkColorScheme.onBackground,
      surface: _darkColorScheme.surface,
      onSurface: _darkColorScheme.onSurface,
      tertiary: _darkColorScheme.shimmer,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: _darkColorScheme.background,
    ),
    scaffoldBackgroundColor: _darkColorScheme.background,
    appBarTheme: AppBarTheme(
      backgroundColor: _darkColorScheme.background,
      //color: _darkColorScheme.primary,
      elevation: AppSizes.double0,
      iconTheme: IconThemeData(
        color: _darkColorScheme.onPrimary,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _darkColorScheme.background,
      selectedItemColor: _darkColorScheme.primary,
      unselectedItemColor: _darkColorScheme.onBackground,
    ),
  );

  static final _darkColorScheme = AppColorScheme.dark();
  static final _textScheme = AppTextScheme.base();
}
