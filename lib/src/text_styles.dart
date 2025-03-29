/// Text styles for iOS.
///
/// This class provides a collection of text styles that are commonly used in iOS applications.
/// It includes styles for large titles, titles, title2, title3, body, callout, subheadline,
/// footnote, caption, and caption2.

import 'package:flutter/cupertino.dart';

class IOSTextStyles {
  /// Applies a large title text style to the text.
  ///
  /// Similar to SwiftUI's .font(.largeTitle) modifier.
  static TextStyle largeTitle() {
    return const TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -1.5,
      height: 1.5,
    );
  }

  /// Applies a title text style to the text.
  ///
  /// Similar to SwiftUI's .font(.title) modifier.
  static TextStyle title() {
    return const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -1.5,
      height: 1.5,
    );
  }

  /// Applies a title 2 text style to the text.
  ///
  /// Similar to SwiftUI's .font(.title2) modifier.
  static TextStyle title2() {
    return const TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -1.0,
      height: 1.5,
    );
  }

  static TextStyle title3() {
    return const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
      height: 1.5,
    );
  }

  static TextStyle headline() {
    return const TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.5,
      height: 1.5,
    );
  }

  static TextStyle subheadline() {
    return const TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
      height: 1.5,
    );
  }

  static TextStyle body() {
    return const TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
      height: 1.5,
    );
  }

  /// Applies a callout text style to the text.
  ///
  /// Similar to SwiftUI's .font(.callout) modifier.
  static TextStyle callout() {
    return const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
      height: 1.5,
    );
  }

  /// Applies a footnote text style to the text.
  ///
  /// Similar to SwiftUI's .font(.footnote) modifier.
  static TextStyle footnote() {
    return const TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1,
      height: 1.5,
    );
  }

  /// Applies a caption text style to the text.
  ///
  /// Similar to SwiftUI's .font(.caption) modifier.
  static TextStyle caption() {
    return const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.3,
      height: 1.5,
    );
  }

  /// Applies a caption 2 text style to the text.
  ///
  /// Similar to SwiftUI's .font(.caption2) modifier.
  static TextStyle caption2() {
    return const TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.3,
      height: 1.5,
    );
  }
}
