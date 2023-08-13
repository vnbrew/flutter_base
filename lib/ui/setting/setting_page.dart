import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/di/di.dart';
import 'package:flutter_base/extension/app_localizations_context.dart';
import 'package:flutter_base/repository/repository.dart';

import '../../navigation/app_router.gr.dart';

@RoutePage()
class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
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
              const LoginButtonWidget(),
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
  const LoginButtonWidget({super.key});

  @override
  State<LoginButtonWidget> createState() => _LoginButtonWidgetState();
}

class _LoginButtonWidgetState extends State<LoginButtonWidget> {
  late IRepository repository = getIt<IRepository>();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (repository.isUserLoggedIn()) {
          repository.logout();
          setState(() {});
        } else {
          AutoRouter.of(context).push(const LoginRoute()).then((value) => {
                if (value != null && value == true) {setState((() {}))}
              });
        }
      },
      child: Text(
          repository.isUserLoggedIn() ? context.loc.logout : context.loc.login),
    );
  }
}
