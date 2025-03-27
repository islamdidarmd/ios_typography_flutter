# iOS Typography

A Flutter package that provides SwiftUI-like text styles for Cupertino widgets.

## Features

- Simple text extension methods that mirror SwiftUI's font styles
- Works with all Text widgets in a Cupertino app
- Consistent with iOS/macOS typography guidelines

## Installation

Add the package to your pubspec.yaml file:

```yaml
dependencies:
  ios_typography: ^1.0.0
```

## Usage

```dart
import 'package:flutter/cupertino.dart';
import 'package:ios_typography/ios_typography.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('iOS Typography'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SwiftUI-like text styles
              Text('Large Title').largeTitle(),
              Text('Title').title(),
              Text('Title 2').title2(),
              Text('Title 3').title3(),
              Text('Headline').headline(),
              Text('Subheadline').subheadline(),
              Text('Body').body(),
              Text('Callout').callout(),
              Text('Footnote').footnote(),
              Text('Caption').caption(),
              Text('Caption 2').caption2(),
            ],
          ),
        ),
      ),
    );
  }
}
```

## Available Text Styles

This package provides the following text style extension methods that match SwiftUI's font styles:

- `.largeTitle()` - The largest pre-defined text style
- `.title()` - Large, prominent text
- `.title2()` - Slightly smaller than title
- `.title3()` - Smaller than title2
- `.headline()` - Emphasized text for headlines
- `.subheadline()` - De-emphasized text under headlines
- `.body()` - Standard text for body content
- `.callout()` - Explanatory text for content
- `.footnote()` - Smaller ancillary text
- `.caption()` - Small text for captions
- `.caption2()` - Smaller caption text

## License

This package is MIT licensed. 