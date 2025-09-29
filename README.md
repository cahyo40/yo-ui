## `README.md`

```markdown
# 🎨 YoUI - Flutter Style Guide & Component Library

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue.svg)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0+-blue.svg)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A comprehensive, production-ready Flutter style guide and component library that helps you build beautiful, consistent, and maintainable applications with ease.

## ✨ Features

- 🎯 **Consistent Design System** - Unified colors, typography, and spacing
- 🎨 **Theme Support** - Light & dark themes with easy customization
- 📱 **Responsive Design** - Adaptive layouts for all screen sizes
- 🚀 **Performance Optimized** - Built with performance in mind
- 🌐 **Internationalization Ready** - Support for multiple languages
- ♿ **Accessibility Friendly** - WCAG compliant components
- 🛠️ **Developer Experience** - Easy to use and extend

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  youi:
    git:
      url: https://github.com/your-username/youi.git
      ref: main
```

Then run:
```bash
flutter pub get
```

## 🚀 Quick Start

### 1. Wrap Your App with YoTheme

```dart
import 'package:youi/youi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: YoTheme.lightTheme(context),
      darkTheme: YoTheme.darkTheme(context),
      home: const HomePage(),
    );
  }
}
```

### 2. Use YoUI Components

```dart
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        title: YoText.titleLarge('Welcome to YoUI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            YoText.headlineMedium('Beautiful Components'),
            const SizedBox(height: 16),
            YoButton.primary(
              text: 'Get Started',
              onPressed: () {},
              expanded: true,
            ),
            const SizedBox(height: 16),
            YoCard(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    YoText.bodyMedium('Consistent design across your entire app'),
                    const SizedBox(height: 8),
                    YoText.bodySmall('Powered by YoUI design system'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

## 🎨 Core Components

### Colors & Theming

```dart
// Using context extensions
Container(
  color: context.primaryColor,
  child: Text('Hello', style: TextStyle(color: context.textColor)),
)

// Direct color access
Container(
  color: YoColors.primary(context),
)

// Gradients
Container(
  decoration: BoxDecoration(gradient: context.primaryGradient),
)
```

### Typography

```dart
// Predefined text styles
YoText.displayLarge('Display Large')
YoText.headlineMedium('Headline Medium')
YoText.titleSmall('Title Small')
YoText.bodyMedium('Body Medium')
YoText.labelLarge('Label Large')

// With customizations
YoText.bodyMedium(
  'Custom Text',
  color: Colors.red,
  fontWeight: FontWeight.bold,
)

// Mono font for numbers/currency
YoText.monoLarge('Rp 1.000.000')
```

### Buttons

```dart
// Primary button
YoButton.primary(
  text: 'Primary Button',
  onPressed: () {},
)

// Secondary button
YoButton.secondary(
  text: 'Secondary Button',
  onPressed: () {},
)

// Outline button
YoButton.outline(
  text: 'Outline Button',
  onPressed: () {},
)

// Ghost button
YoButton.ghost(
  text: 'Ghost Button',
  onPressed: () {},
)

// With icons and loading
YoButton.primary(
  text: 'Processing...',
  onPressed: () {},
  isLoading: true,
  icon: Icon(Icons.download),
)
```

### Cards

```dart
// Basic card
YoCard(
  child: Text('Card Content'),
)

// Surface card
YoCard.surface(
  child: Text('Surface Card'),
)

// Elevated card
YoCard.elevated(
  child: Text('Elevated Card'),
)
```

## 📱 Advanced Components

### Image Handling

```dart
// Network image with caching
YoImage.network(
  url: 'https://example.com/image.jpg',
  width: 200,
  height: 200,
  borderRadius: BorderRadius.circular(12),
)

// Asset image
YoImage.asset(
  assetPath: 'assets/images/photo.jpg',
  placeholder: YoLoading.spinner(),
)

// Image viewer
YoImageViewer.show(
  context: context,
  imageUrls: ['url1.jpg', 'url2.jpg'],
  enableDownload: true,
  enableZoom: true,
)
```

### Dialogs & Bottom Sheets

```dart
// Simple dialog
YoDialog.show(
  context: context,
  title: 'Information',
  content: 'This is a dialog message',
  actions: [
    YoButton.primary(text: 'OK', onPressed: () => Navigator.pop(context)),
  ],
)

// Confirmation dialog
YoConfirmDialog.show(
  context: context,
  title: 'Delete Item',
  content: 'Are you sure you want to delete this item?',
  confirmText: 'Delete',
  isDestructive: true,
).then((confirmed) {
  if (confirmed == true) {
    // Delete item
  }
})

// Bottom sheet
YoBottomSheet.show(
  context: context,
  title: 'Options',
  child: ListView(
    children: [
      ListTile(title: Text('Option 1')),
      ListTile(title: Text('Option 2')),
    ],
  ),
)
```

### Feedback & Loading

```dart
// Loading indicators
YoLoading.spinner(size: 24)
YoLoading.dots(size: 24)

// Skeleton loading
YoSkeleton.line(width: 200, height: 16)
YoSkeleton.circle(size: 50)

// Empty states
YoEmptyState.noData(
  title: 'No data found',
  description: 'Try refreshing the page',
  actionText: 'Refresh',
  onAction: () => _loadData(),
)

// Error states
YoErrorState(
  onRetry: _loadData,
  error: 'Connection failed',
)

// Loading overlay
YoLoadingOverlay(
  isLoading: _isLoading,
  message: 'Loading data...',
  child: YourContent(),
)
```

## 🛠️ Utilities & Helpers

### Date Formatting

```dart
// Basic formatting
YoDateFormatter.formatDate(DateTime.now()) // '15 Jan 2024'
YoDateFormatter.formatDateTime(DateTime.now()) // '15 Jan 2024 14:30'
YoDateFormatter.formatTime(DateTime.now()) // '14:30'

// Relative time
YoDateFormatter.formatRelativeTime(someDate) // '2 hours ago'

// Date manipulation
YoDateFormatter.startOfDay(DateTime.now())
YoDateFormatter.endOfMonth(DateTime.now())
YoDateFormatter.isToday(someDate)
```

### ID Generation

```dart
// Various ID types
YoIdGenerator.numericId(length: 8) // '12345678'
YoIdGenerator.alphanumericId(length: 12) // 'aB3xY8pQ2rM1'
YoIdGenerator.uuid() // UUID v4

// Prefixed IDs
YoIdGenerator.userId() // 'USR_aB3xY8pQ'
YoIdGenerator.orderId() // 'ORD_20240115001'

// Timestamp-based
YoIdGenerator.timestampId() // '15012024093015'
```

### Logging

```dart
// Different log levels
YoLogger.debug('Debug message', data: {'key': 'value'})
YoLogger.info('Info message')
YoLogger.warning('Warning message')
YoLogger.error('Error occurred', error: e, stackTrace: stackTrace)

// Performance tracking
YoLogger.trackPerformance('Heavy operation', () {
  // Your code here
})
```

### Connectivity

```dart
// Initialize connectivity
await YoConnectivity.initialize();

// Check connection status
bool isConnected = YoConnectivity.isConnected;
String connectionType = YoConnectivity.connectionName;

// Listen for changes
YoConnectivity.addListener((isConnected) {
  if (!isConnected) {
    // Show offline banner
  }
});

// Ensure connection for network calls
YoConnectivity.ensureConnection(() {
  return api.fetchData();
});
```

## 🎯 Responsive Design

```dart
// Responsive values
Container(
  width: YoResponsive.responsiveValue(context,
    mobile: 300,
    tablet: 400,
    desktop: 500,
  ),
)

// Conditional rendering
if (YoResponsive.isMobile(context)) {
  // Mobile layout
} else if (YoResponsive.isTablet(context)) {
  // Tablet layout
} else {
  // Desktop layout
}

// Responsive widgets
YoResponsive.responsiveWidget(
  context,
  mobile: MobileWidget(),
  tablet: TabletWidget(),
  desktop: DesktopWidget(),
)
```

## 🔧 Customization

### Theme Customization

```dart
// Copy theme with custom colors
final customTheme = YoThemeCopyWith.copyWithColors(
  baseTheme: YoTheme.lightTheme,
  primary: Colors.blue,
  secondary: Colors.green,
);

// Copy theme with custom fonts
final fontTheme = YoThemeCopyWith.copyWithFonts(
  baseTheme: YoTheme.lightTheme,
  primaryFont: 'Inter',
  secondaryFont: 'Poppins',
);
```

### Color System

```dart
class MyColors {
  static const Color brandPrimary = Color(0xFF0066CC);
  static const Color brandSecondary = Color(0xFF00A86B);
}

// Extend YoColors
extension CustomColors on YoColors {
  static Color brandPrimary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light 
        ? MyColors.brandPrimary 
        : MyColors.brandPrimary.withOpacity(0.8);
  }
}
```

## 📚 API Reference

### Available Text Styles
- `displayLarge`, `displayMedium`, `displaySmall`
- `headlineLarge`, `headlineMedium`, `headlineSmall`
- `titleLarge`, `titleMedium`, `titleSmall`
- `bodyLarge`, `bodyMedium`, `bodySmall`
- `labelLarge`, `labelMedium`, `labelSmall`
- `monoLarge`, `monoMedium`, `monoSmall`

### Color Palette
- `primary`, `secondary`, `accent`, `background`, `text`
- `success`, `error`, `warning`, `info`
- `gray50` to `gray900`

### Spacing Scale
- `xs: 4`, `sm: 8`, `md: 16`, `lg: 24`, `xl: 32`, `xxl: 48`



**Built with ❤️ for the Flutter community**
```

### `CHANGELOG.md`

```markdown
# Changelog

## [1.0.0] - 2024-01-15

### Added
- Initial release
- Core components (Text, Button, Card)
- Theme system (Light & Dark)
- Utility helpers (Date, ID, Logger)
- Image handling components
- Dialog and bottom sheet widgets
```
