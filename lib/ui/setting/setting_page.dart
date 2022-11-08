import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/di/di.dart';
import 'package:flutter_base/extension/app_localizations_context.dart';

import '../../navigation/app_router.gr.dart';
import '../../preferences/shared_preferences.dart';

class SettigPage extends StatefulWidget {
  const SettigPage({Key? key}) : super(key: key);

  @override
  State<SettigPage> createState() => _SettigPageState();
}

class _SettigPageState extends State<SettigPage> {
  @override
  Widget build(BuildContext context) {
    final prefs = getIt<ISharedPreferencesManager>();
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const AboutRoute());
                },
                child: Text(context.loc.about),
              ),
              const SizedBox(
                height: 10,
              ),
              LoginButtonWidget(prefs: prefs),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const LanguageRoute());
                },
                child: Text(context.loc.languege),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const ThemeRoute());
                },
                child: Text(context.loc.theme),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButtonWidget extends StatefulWidget {
  const LoginButtonWidget({
    Key? key,
    required this.prefs,
  }) : super(key: key);

  final ISharedPreferencesManager prefs;

  @override
  State<LoginButtonWidget> createState() => _LoginButtonWidgetState();
}

class _LoginButtonWidgetState extends State<LoginButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (widget.prefs.isUserLoggedIn()) {
          widget.prefs.setUserLoggedOut();
          setState(() {});
        } else {
          AutoRouter.of(context).push(const LoginRoute()).then((value) => {
                if (value != null && value == true) {setState((() {}))}
              });
        }
      },
      child: Text(widget.prefs.isUserLoggedIn()
          ? context.loc.logout
          : context.loc.login),
    );
  }
}
