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
                const Text('Text Styles with Extensions').body(),
                const SizedBox(height: 16),

                // Text style examples
                const Text('Large Title').largeTitle(),
                Text('Large Title', style: IOSTextStyles.largeTitle()),
                const SizedBox(height: 8),

                const Text('Title').title(),
                Text('Title', style: IOSTextStyles.title()),
                const SizedBox(height: 8),

                const Text('Title 2').title2(),
                Text('Title 2', style: IOSTextStyles.title2()),
                const SizedBox(height: 8),

                const Text('Title 3').title3(),
                Text('Title 3', style: IOSTextStyles.title3()),
                const SizedBox(height: 8),

                const Text('Headline').headline(),
                Text('Headline', style: IOSTextStyles.headline()),
                const SizedBox(height: 8),

                const Text('Subheadline').subheadline(),
                Text('Subheadline', style: IOSTextStyles.subheadline()),
                const SizedBox(height: 8),

                const Text('Body').body(),
                Text('Body', style: IOSTextStyles.body()),
                const SizedBox(height: 8),

                const Text('Callout').callout(),
                Text('Callout', style: IOSTextStyles.callout()),
                const SizedBox(height: 8),

                const Text('Footnote').footnote(),
                Text('Footnote', style: IOSTextStyles.footnote()),
                const SizedBox(height: 8),

                const Text('Caption').caption(),
                Text('Caption', style: IOSTextStyles.caption()),
                const SizedBox(height: 8),

                const Text('Caption 2').caption2(),
                Text('Caption 2', style: IOSTextStyles.caption2()),
                const SizedBox(height: 8),

                // Example of styled text with Cupertino colors
                const Text('Colored Text').headline().copyWith(
                      style: const TextStyle(color: CupertinoColors.systemBlue),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
