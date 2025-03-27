/// Text styles for iOS.
///
/// This class provides a collection of text styles that are commonly used in iOS applications.
/// It includes styles for large titles, titles, title2, title3, body, callout, subheadline,
/// footnote, caption, and caption2.

import 'package:flutter/cupertino.dart';

class IOSTextStyles {
  static const CupertinoTextThemeData _baseTextTheme = CupertinoTextThemeData();

  /// Applies a large title text style to the text.
  ///
  /// Similar to SwiftUI's .font(.largeTitle) modifier.
  static TextStyle largeTitle() {
    return _baseTextTheme.navLargeTitleTextStyle;
  }

  /// Applies a title text style to the text.
  ///
  /// Similar to SwiftUI's .font(.title) modifier.
  static TextStyle title() {
    return const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.36,
      height: 1.2,
    );
  }

  /// Applies a title 2 text style to the text.
  ///
  /// Similar to SwiftUI's .font(.title2) modifier.
  static TextStyle title2() {
    return const TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.35,
      height: 1.2,
    );
  }

  static TextStyle title3() {
    return const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.38,
      height: 1.2,
    );
  }

  static TextStyle headline() {
    return _baseTextTheme.navTitleTextStyle;
  }

  static TextStyle subheadline() {
    return const TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.24,
      height: 1.3,
    );
  }

  static TextStyle body() {
    return _baseTextTheme.textStyle;
  }

  /// Applies a callout text style to the text.
  ///
  /// Similar to SwiftUI's .font(.callout) modifier.
  static TextStyle callout() {
    return const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.32,
      height: 1.3,
    );
  }

  /// Applies a footnote text style to the text.
  ///
  /// Similar to SwiftUI's .font(.footnote) modifier.
  static TextStyle footnote() {
    return const TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.08,
      height: 1.3,
    );
  }

  /// Applies a caption text style to the text.
  ///
  /// Similar to SwiftUI's .font(.caption) modifier.
  static TextStyle caption() {
    return _baseTextTheme.tabLabelTextStyle;
  }

  /// Applies a caption 2 text style to the text.
  ///
  /// Similar to SwiftUI's .font(.caption2) modifier.
  static TextStyle caption2() {
    return const TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.06,
      height: 1.3,
    );
  }
}
