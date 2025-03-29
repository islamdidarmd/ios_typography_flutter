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
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text style examples
                  const Text('Large Title').largeTitle(),
                  Text('Large Title', style: IOSTextStyles.largeTitle()),
              
                  const Text('Title').title(),
                  Text('Title', style: IOSTextStyles.title()),
              
                  const Text('Title2').title2(),
                  Text('Title2', style: IOSTextStyles.title2()),
              
                  const Text('Title3').title3(),
                  Text('Title3', style: IOSTextStyles.title3()),
              
                  const Text('Headline').headline(),
                  Text('Headline', style: IOSTextStyles.headline()),
              
                  const Text('Subheadline').subheadline(),
                  Text('Subheadline', style: IOSTextStyles.subheadline()),
              
                  const Text('Body').body(),
                  Text('Body', style: IOSTextStyles.body()),
              
                  const Text('Callout').callout(),
                  Text('Callout', style: IOSTextStyles.callout()),
              
                  const Text('Footnote').footnote(),
                  Text('Footnote', style: IOSTextStyles.footnote()),
              
                  const Text('Caption').caption(),
                  Text('Caption', style: IOSTextStyles.caption()),
              
                  const Text('Caption2').caption2(),
                  Text('Caption2', style: IOSTextStyles.caption2()),
              
                  // Example of styled text with Cupertino colors
                  const Text('Colored Text').body().copyWith(
                        style: const TextStyle(color: CupertinoColors.systemBlue),
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
