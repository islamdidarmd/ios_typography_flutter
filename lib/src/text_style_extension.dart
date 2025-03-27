import 'package:flutter/cupertino.dart';

/// Extension on [Text] widget to provide SwiftUI-like text styling.
extension IOSTextStyle on Text {
  /// Applies a large title text style to the text.
  ///
  /// Similar to SwiftUI's .font(.largeTitle) modifier.
  Text largeTitle() {
    return _applyStyle(CupertinoTextThemeData().navLargeTitleTextStyle);
  }

  /// Applies a title text style to the text.
  ///
  /// Similar to SwiftUI's .font(.title) modifier.
  Text title() {
    const TextStyle titleStyle = TextStyle(
      //fontFamily: '.SF Pro Display',
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.36,
      height: 1.2,
    );
    return _applyStyle(titleStyle);
  }

  /// Applies a title 2 text style to the text.
  ///
  /// Similar to SwiftUI's .font(.title2) modifier.
  Text title2() {
    const TextStyle title2Style = TextStyle(
      //fontFamily: '.SF Pro Display',
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.35,
      height: 1.2,
    );
    return _applyStyle(title2Style);
  }

  /// Applies a title 3 text style to the text.
  ///
  /// Similar to SwiftUI's .font(.title3) modifier.
  Text title3() {
    const TextStyle title3Style = TextStyle(
      //fontFamily: '.SF Pro Display',
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.38,
      height: 1.2,
    );
    return _applyStyle(title3Style);
  }

  /// Applies a headline text style to the text.
  ///
  /// Similar to SwiftUI's .font(.headline) modifier.
  Text headline() {
    return _applyStyle(CupertinoTextThemeData().navTitleTextStyle);
  }

  /// Applies a subheadline text style to the text.
  ///
  /// Similar to SwiftUI's .font(.subheadline) modifier.
  Text subheadline() {
    TextStyle subheadlineStyle = TextStyle(
      //fontFamily: '.SF Pro Text',
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.24,
      height: 1.3,
    );
    return _applyStyle(subheadlineStyle);
  }

  /// Applies a body text style to the text.
  ///
  /// Similar to SwiftUI's .font(.body) modifier.
  Text body() {
    return _applyStyle(CupertinoTextThemeData().textStyle);
  }

  /// Applies a callout text style to the text.
  ///
  /// Similar to SwiftUI's .font(.callout) modifier.
  Text callout() {
    const TextStyle calloutStyle = TextStyle(
      //fontFamily: '.SF Pro Text',
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.32,
      height: 1.3,
    );
    return _applyStyle(calloutStyle);
  }

  /// Applies a footnote text style to the text.
  ///
  /// Similar to SwiftUI's .font(.footnote) modifier.
  Text footnote() {
    const TextStyle footnoteStyle = TextStyle(
      //fontFamily: '.SF Pro Text',
      fontSize: 13.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.08,
      height: 1.3,
    );
    return _applyStyle(footnoteStyle);
  }

  /// Applies a caption text style to the text.
  ///
  /// Similar to SwiftUI's .font(.caption) modifier.
  Text caption() {
    return _applyStyle(CupertinoTextThemeData().tabLabelTextStyle);
  }

  /// Applies a caption 2 text style to the text.
  ///
  /// Similar to SwiftUI's .font(.caption2) modifier.
  Text caption2() {
    const TextStyle caption2Style = TextStyle(
      //fontFamily: '.SF Pro Text',
      fontSize: 11.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.06,
      height: 1.3,
    );
    return _applyStyle(caption2Style);
  }

  // Helper method to apply a TextStyle to the text
  Text _applyStyle(TextStyle newStyle) {
    final TextStyle currentStyle = style ?? const TextStyle();
    final TextStyle mergedStyle = currentStyle.merge(newStyle);

    // Handle both Text and Text.rich constructors
    if (textSpan != null) {
      // For Text.rich constructor, handle both TextSpan and InlineSpan
      if (textSpan is TextSpan) {
        final TextSpan span = textSpan as TextSpan;
        final TextSpan updatedSpan = TextSpan(
          text: span.text,
          children: span.children,
          style: span.style?.merge(mergedStyle) ?? mergedStyle,
          recognizer: span.recognizer,
          mouseCursor: span.mouseCursor,
          onEnter: span.onEnter,
          onExit: span.onExit,
          semanticsLabel: span.semanticsLabel,
          locale: span.locale,
          spellOut: span.spellOut,
        );

        return Text.rich(
          updatedSpan,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
        );
      } else {
        // For other InlineSpan types, create a simpler version
        return Text.rich(
          TextSpan(
            style: mergedStyle,
            children: [textSpan!],
          ),
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
        );
      }
    } else {
      // For regular Text constructor
      return Text(
        data ?? '',
        style: mergedStyle,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
      );
    }
  }
}
