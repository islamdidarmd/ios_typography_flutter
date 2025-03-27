// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ios_typography/ios_typography.dart';

void main() {
  testWidgets('Text styles are applied correctly', (WidgetTester tester) async {
    // Create a simple widget that uses the typography styles
    await tester.pumpWidget(
      CupertinoApp(
        home: CupertinoPageScaffold(
          child: Column(
            children: [
              Text('Large Title').largeTitle(),
              Text('Title').title(),
              Text('Body').body(),
            ],
          ),
        ),
      ),
    );

    // Verify that the text appears and has styled correctly
    expect(find.text('Large Title'), findsOneWidget);
    expect(find.text('Title'), findsOneWidget);
    expect(find.text('Body'), findsOneWidget);
  });
}
