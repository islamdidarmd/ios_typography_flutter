import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ios_typography/ios_typography.dart';

void main() {
  group('iOS Typography Extensions', () {
    testWidgets('Text styles are applied correctly', (
      WidgetTester tester,
    ) async {
      // Create a simple widget that uses the typography styles
      await tester.pumpWidget(
        CupertinoApp(
          home: CupertinoPageScaffold(
            child: Column(
              children: [
                const Text('Large Title').largeTitle(),
                const Text('Title').title(),
                const Text('Title 2').title2(),
                const Text('Title 3').title3(),
                const Text('Headline').headline(),
                const Text('Subheadline').subheadline(),
                const Text('Body').body(),
                const Text('Callout').callout(),
                const Text('Footnote').footnote(),
                const Text('Caption').caption(),
                const Text('Caption 2').caption2(),
              ],
            ),
          ),
        ),
      );

      // Verify that the text appears and has styled correctly
      expect(find.text('Large Title'), findsOneWidget);
      expect(find.text('Title'), findsOneWidget);
      expect(find.text('Title 2'), findsOneWidget);
      expect(find.text('Title 3'), findsOneWidget);
      expect(find.text('Headline'), findsOneWidget);
      expect(find.text('Subheadline'), findsOneWidget);
      expect(find.text('Body'), findsOneWidget);
      expect(find.text('Callout'), findsOneWidget);
      expect(find.text('Footnote'), findsOneWidget);
      expect(find.text('Caption'), findsOneWidget);
      expect(find.text('Caption 2'), findsOneWidget);
    });

    testWidgets('Text.rich constructor works with styling extensions', (
      WidgetTester tester,
    ) async {
      // Test Text.rich constructor
      await tester.pumpWidget(
        CupertinoApp(
          home: CupertinoPageScaffold(
            child:
                const Text.rich(
                  TextSpan(
                    text: 'Rich ',
                    children: [
                      TextSpan(
                        text: 'Text',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ).headline(),
          ),
        ),
      );

      // Verify that the rich text appears and is styled
      expect(find.text('Rich Text'), findsOneWidget);
    });
  });
}
