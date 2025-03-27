import 'package:flutter/cupertino.dart';
import 'package:ios_typography/ios_typography.dart';

void main() {
  runApp(const IOSTypographyExample());
}

class IOSTypographyExample extends StatelessWidget {
  const IOSTypographyExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'iOS Typography Demo',
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: TypographyDemoPage(),
    );
  }
}

class TypographyDemoPage extends StatelessWidget {
  const TypographyDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('iOS Typography').headline(),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section title
                const Text('Text Styles').headline(),
                const SizedBox(height: 16),

                // Text style examples
                const Text('Large Title').largeTitle(),
                const SizedBox(height: 8),

                const Text('Title').title(),
                const SizedBox(height: 8),

                const Text('Title 2').title2(),
                const SizedBox(height: 8),

                const Text('Title 3').title3(),
                const SizedBox(height: 8),

                const Text('Headline').headline(),
                const SizedBox(height: 8),

                const Text('Subheadline').subheadline(),
                const SizedBox(height: 8),

                const Text('Body').body(),
                const SizedBox(height: 8),

                const Text('Callout').callout(),
                const SizedBox(height: 8),

                const Text('Footnote').footnote(),
                const SizedBox(height: 8),

                const Text('Caption').caption(),
                const SizedBox(height: 8),

                const Text('Caption 2').caption2(),
                const SizedBox(height: 8),

                // Example of styled text with Cupertino colors
                const Text('Colored Text').headline().copyWith(
                      style: const TextStyle(color: CupertinoColors.systemBlue),
                    ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Helper extension to make it easier to apply colors to styled text
extension TextCopyWith on Text {
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
}
