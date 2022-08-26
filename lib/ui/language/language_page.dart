import 'package:flutter/material.dart';
import 'package:flutter_base/enum/constants.dart';
import 'package:flutter_base/enum/enum.dart';
import '../../app/app_bloc.dart';
import '../../app/app_event.dart';
import '../../app/utils/gen/localized/l10n.dart';
import '../../di/di.dart';
import '../../preferences/shared_preferences.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBloc = getIt<AppBloc>();
    final prefs = getIt<ISharedPreferencesManager>();
    final currentLanguageCode = prefs.getLanguageCode();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalized.current.languege,
                style: Theme.of(context).textTheme.headline3,
              ),
              ElevatedButton(
                onPressed: () {
                  var languageCode = (currentLanguageCode == LanguageCode.en)
                      ? LanguageCode.vi
                      : LanguageCode.en;
                  appBloc.add(AppLanguageChanged(languageCode: languageCode));
                  prefs.setLanguageCode(languageCode);
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
                  var languageCode = (currentLanguageCode == LanguageCode.vi)
                      ? LanguageCode.en
                      : LanguageCode.vi;
                  appBloc.add(AppLanguageChanged(languageCode: languageCode));
                  prefs.setLanguageCode(languageCode);
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
