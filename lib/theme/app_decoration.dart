import 'package:flutter/material.dart';
import 'package:job_search_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static BoxDecoration get fill5 => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.pink700,
        boxShadow: [
          BoxShadow(
            color: appTheme.pink700.withOpacity(0.3),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: appTheme.pink50,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get txtFill2 => BoxDecoration(
        color: appTheme.pink100,
      );
  static BoxDecoration get txtFill1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onError,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.deepOrange50,
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.green50,
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: appTheme.indigo300,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15,
    ),
  );

  static BorderRadius circleBorder36 = BorderRadius.circular(
    getHorizontalSize(
      36,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

// double get strokeAlignInside => BorderSide.strokeAlignInside;

// double get strokeAlignCenter => BorderSide.strokeAlignCenter;

// double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

StrokeAlign get strokeAlignInside => StrokeAlign.inside;

StrokeAlign get strokeAlignCenter => StrokeAlign.center;

StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
