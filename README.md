# iOS Typography

A Flutter package that provides iOS-like text styles for Cupertino widgets.

## Demo

| SwiftUI | Flutter |
|---------|---------|
| <img src="https://raw.githubusercontent.com/islamdidarmd/ios_typography_flutter/main/demo/swiftui.png" width="300" alt="demo"/>        |<img src="https://raw.githubusercontent.com/islamdidarmd/ios_typography_flutter/main/demo/cupertino.png" width="300" alt="demo"/>         |

## Features

- Simple text extension methods that mirror iOS's font styles
- Works with all Text widgets in a Cupertino app
- Consistent with iOS typography guidelines

## Installation

Add the package to your pubspec.yaml file:

```yaml
dependencies:
  ios_typography: ^latest_version
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
              //Flutter style
              Text('Large Title', style: IOSTextStyles.largeTitle())
            ],
          ),
        ),
      ),
    );
  }
}
```

## Available Text Styles

This package provides the following text style extension methods that match iOS's font styles:

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