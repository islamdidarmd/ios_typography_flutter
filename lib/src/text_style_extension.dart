import 'package:flutter/cupertino.dart';
import 'package:ios_typography/src/text_styles.dart';

/// Extension on [Text] widget to provide SwiftUI-like text styling.
extension IOSTextStyle on Text {
  /// Applies a large title text style to the text.
  ///
  /// Similar to SwiftUI's .font(.largeTitle) modifier.
  Text largeTitle() {
    return _applyStyle(IOSTextStyles.largeTitle());
  }

  /// Applies a title text style to the text.
  ///
  /// Similar to SwiftUI's .font(.title) modifier.
  Text title() {
    return _applyStyle(IOSTextStyles.title());
  }

  /// Applies a title 2 text style to the text.
  ///
  /// Similar to SwiftUI's .font(.title2) modifier.
  Text title2() {
    return _applyStyle(IOSTextStyles.title2());
  }

  /// Applies a title 3 text style to the text.
  ///
  /// Similar to SwiftUI's .font(.title3) modifier.
  Text title3() {
    return _applyStyle(IOSTextStyles.title3());
  }

  /// Applies a headline text style to the text.
  ///
  /// Similar to SwiftUI's .font(.headline) modifier.
  Text headline() {
    return _applyStyle(IOSTextStyles.headline());
  }

  /// Applies a subheadline text style to the text.
  ///
  /// Similar to SwiftUI's .font(.subheadline) modifier.
  Text subheadline() {
    return _applyStyle(IOSTextStyles.subheadline());
  }

  /// Applies a body text style to the text.
  ///
  /// Similar to SwiftUI's .font(.body) modifier.
  Text body() {
    return _applyStyle(IOSTextStyles.body());
  }

  /// Applies a callout text style to the text.
  ///
  /// Similar to SwiftUI's .font(.callout) modifier.
  Text callout() {
    return _applyStyle(IOSTextStyles.callout());
  }

  /// Applies a footnote text style to the text.
  ///
  /// Similar to SwiftUI's .font(.footnote) modifier.
  Text footnote() {
    return _applyStyle(IOSTextStyles.footnote());
  }

  /// Applies a caption text style to the text.
  ///
  /// Similar to SwiftUI's .font(.caption) modifier.
  Text caption() {
    return _applyStyle(IOSTextStyles.caption());
  }

  /// Applies a caption 2 text style to the text.
  ///
  /// Similar to SwiftUI's .font(.caption2) modifier.
  Text caption2() {
    return _applyStyle(IOSTextStyles.caption2());
  }

  // Helper extension to make it easier to apply colors to styled text
  Text copyWith({TextStyle? style}) {
    final TextStyle currentStyle = this.style ?? const TextStyle();
    return Text(
      data ?? '',
      style: currentStyle.merge(style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      // ignore: deprecated_member_use
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
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
          textScaler: textScaler,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
        );
      } else {
        // For other InlineSpan types, create a simpler version
        return Text.rich(
          TextSpan(style: mergedStyle, children: [textSpan!]),
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaler: textScaler,
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
        textScaler: textScaler,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
      );
    }
  }
}
