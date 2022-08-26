import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../app/utils/gen/localized/l10n.dart';
import '../../navigation/app_router.gr.dart';

class SettigPage extends StatelessWidget {
  const SettigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalized.current.setting,
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(const AboutRoute());
                },
                child: Text(AppLocalized.current.about),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(const LoginRoute());
                },
                child: Text(AppLocalized.current.login),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(const LanguageRoute());
                },
                child: Text(AppLocalized.current.languege),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(const ThemeRoute());
                },
                child: Text(AppLocalized.current.theme),
              )
            ],
          ),
        ),
      ),
    );
  }
}
