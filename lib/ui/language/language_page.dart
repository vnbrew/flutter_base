import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/enum/constants.dart';
import 'package:flutter_base/enum/enum.dart';
import 'package:flutter_base/extension/app_localizations_context.dart';

import '../../app/app_bloc.dart';
import '../../app/app_event.dart';
import '../../di/di.dart';
import '../../repository/preferences/shared_preferences.dart';

@RoutePage()
class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = getIt<AppBloc>();
    final prefs = getIt<ISharedPreferencesManager>();
    final currentLanguageCode = prefs.getLanguageCode();
    return Scaffold(
      appBar: AppBar(title: Text(context.loc.languege)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (currentLanguageCode != LanguageCode.en) {
                    var languageCode = LanguageCode.en;
                    appBloc.add(AppLanguageChanged(languageCode: languageCode));
                    prefs.setLanguageCode(languageCode);
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(LanguageName.en),
                    const SizedBox(width: 5),
                    (currentLanguageCode == LanguageCode.en
                        ? const Icon(Icons.check, size: 24.0)
                        : const SizedBox(width: 24))
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (currentLanguageCode != LanguageCode.vi) {
                    var languageCode = LanguageCode.vi;
                    appBloc.add(AppLanguageChanged(languageCode: languageCode));
                    prefs.setLanguageCode(languageCode);
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(LanguageName.vi),
                    const SizedBox(width: 5),
                    (currentLanguageCode == LanguageCode.vi
                        ? const Icon(Icons.check, size: 24.0)
                        : const SizedBox(width: 24))
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
