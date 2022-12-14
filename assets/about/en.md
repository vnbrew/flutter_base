# Setup

- Flutter (Channel stable, 3.0.5)
- Dart SDK version: 2.17.6 (stable)

# IDE

- Visual Studio Code

# Build

- dart pub global run intl_utils:generate
- flutter pub run build_runner build --delete-conflicting-outputs
- flutter run

# pubspec.yaml

## version: 1.0.0+1

## environment:

- sdk: ">=2.17.6 <3.0.0"

## dependencies:

- flutter:
  - sdk: flutter
- flutter_localizations:
  - sdk: flutter
- intl_utils: 2.7.0
- intl: 0.17.0
- cupertino_icons: ^1.0.2
- get_it: 7.2.0
- injectable: 1.5.3
- json_annotation: 4.6.0
- auto_route: 4.2.1
- flutter_bloc: 8.0.1
- freezed_annotation: 2.1.0
- shared_preferences: 2.0.15
- equatable: 2.0.5
- flutter_markdown: 0.6.13

## dev_dependencies:

- flutter_test:
  - sdk: flutter
- flutter_lints: ^2.0.0
- build_runner: 2.2.0
- injectable_generator: 1.5.4
- json_serializable: 6.3.1
- auto_route_generator: 4.2.1
- freezed: 2.1.0

## flutter:

- uses-material-design: true
- assets:
  - assets/about/

## flutter_intl:

- enabled: true
- main_locale: en
- output_dir: lib/app/utils/gen/localized
- arb_dir: assets/localizations
- class_name: AppLocalized
