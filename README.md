# Setup
- Flutter (Channel stable, 3.0.5)
- Dart SDK version: 2.17.6 (stable)
# IDE
- Visual Studio Code
# Build
```sh
flutter pub global run intl_utils:generate
dart run build_runner build --delete-conflicting-outputs
```
# Splash
```sh
flutter pub run flutter_native_splash:create
flutter pub run flutter_native_splash:create --path=flutter_native_splash.yaml
```