# Flutter Makefile
FLUTTER = flutter

# Default task
all: run

# language
language:
	dart run intl_utils:generate

# build_runner
runner:
	dart run build_runner build --delete-conflicting-outputs

# Clean project
clean:
	$(FLUTTER) clean

# Get dependencies
get:
	$(FLUTTER) pub get

# Run the app on connected device
run: pub_get
	$(FLUTTER) run

# Build APK
build_apk:
	$(FLUTTER) build apk --release

# Build iOS app
build_ios:
	$(FLUTTER) build ios --release

# Analyze code
analyze:
	$(FLUTTER) analyze

# Format code
format:
	$(FLUTTER) format .

# Test project
test:
	$(FLUTTER) test
