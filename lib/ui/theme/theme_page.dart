import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/extension/app_localizations_context.dart';

import '../../app/app_bloc.dart';
import '../../app/app_event.dart';
import '../../di/di.dart';
import '../../repository/preferences/shared_preferences.dart';

@RoutePage()
class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = getIt<AppBloc>();
    final prefs = getIt<ISharedPreferencesManager>();
    final isDarkMode = prefs.isDarkMode();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(title: Text(context.loc.theme)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (isDarkMode) {
                    appBloc.add(AppThemeChanged(isDarkTheme: !isDarkMode));
                    prefs.setThemeMode(!isDarkMode);
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(context.loc.light_mode),
                    const SizedBox(width: 5),
                    (!isDarkMode ? const Icon(Icons.check, size: 24.0) : const SizedBox(width: 24))
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (!isDarkMode) {
                    appBloc.add(AppThemeChanged(isDarkTheme: !isDarkMode));
                    prefs.setThemeMode(!isDarkMode);
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(context.loc.dark_mode),
                    const SizedBox(width: 5),
                    (isDarkMode ? const Icon(Icons.check, size: 24.0) : const SizedBox(width: 24))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
