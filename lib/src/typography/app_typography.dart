import 'package:flutter/material.dart';

class AppTypography {
  /// Defines a set of Material Design 3 (M3) text styles for use in the app.
  ///
  /// These styles are based on the M3 typography guidelines and include:
  ///
  /// - `m3TitleMedium`: A medium-sized title style.
  /// - `m3LabelSmall`: A small label style.
  /// - `m3BodyMedium`: A medium-sized body text style.
  /// - `m3BodyLarge`: A large body text style.
  ///
  /// All styles use the 'Roboto' font family and have appropriate font weights, sizes, and spacing for their intended use.

  static const m3TitleMedium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static const m3labelSmall = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.45,
    letterSpacing: 0.5,
  );

  static const m3BodyMedium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43,
    letterSpacing: 0.25,
  );
  static const m3BodyLarge = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 32,
    fontWeight: FontWeight.w400,
    height: 1.25,
  );
}
