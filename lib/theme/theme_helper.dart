import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.onError.withOpacity(1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: colorScheme.primary,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: getFontSize(
            30,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray30001,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray30001,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(
          color: appTheme.blueGray30001,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray30001,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: getFontSize(
            34,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    onPrimary: Color(0XFF0C0C0C),
    shadow: Color(0XFF0C0C0C),
    onPrimaryContainer: Color(0XFFFFBFD3),
    onTertiary: Color(0XFFFFBFD3),
    // scrim: Color(0XFF242323),
    primaryContainer: Color(0XFF242323),
    tertiaryContainer: Color(0XFF7E7E7E),
    secondaryContainer: Color(0XFF7E7E7E),
    error: Color(0XFF0C0C0C),
    onErrorContainer: Color(0XFF0C0C0C),
    outline: Color(0XFF0C0C0C),
    onSurfaceVariant: Color(0XFF0C0C0C),
    onBackground: Color(0XFFFFBFD3),
    // outlineVariant: Color(0XFF242323),
    errorContainer: Color(0XFF3949AD),
    onSurface: Color(0XFFFFBFD3),
    onError: Color(0X4C475BD8),
    surface: Color(0XFF242323),
    onInverseSurface: Color(0X4C475BD8),
    onSecondaryContainer: Color(0XFF0C0C0C),
    tertiary: Color(0XFF242323),
    surfaceTint: Color(0XFF0C0C0C),
    onTertiaryContainer: Color(0XFF0C0C0C),
    surfaceVariant: Color(0XFF7E7E7E),
    inversePrimary: Color(0XFF242323),
    secondary: Color(0XFF242323),
    inverseSurface: Color(0XFF0C0C0C),
    background: Color(0XFF242323),
    onSecondary: Color(0XFFFFBFD3),
    primary: Color(0XFFC94F59),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  Color get primaryVariant => Color(0XFF242323);
  Color get secondaryVariant => Color(0XFF7E7E7E);
  Color get lightBlueA700 => Color(0XFF0096FF);
  Color get pink100 => Color(0XFFFFBFD4);
  Color get deepOrange50 => Color(0XFFFFEAE6);
  Color get green50 => Color(0XFFE8FFEB);
  Color get pink700 => Color(0XFFBD3362);
  Color get blue50 => Color(0XFFE8F6FF);
  Color get indigo300 => Color(0XFF7E8CE4);
  Color get blueGray300 => Color(0XFF9098B1);
  Color get whiteA700 => Color(0XFFFFFFFF);
  Color get blue5001 => Color(0XFFEAEFFF);
  Color get pink50 => Color(0XFFFFE2EB);
  Color get blueGray30001 => Color(0XFF9CA5BF);
  Color get blueGray400 => Color(0XFF888888);
  Color get black900 => Color(0XFF000000);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
