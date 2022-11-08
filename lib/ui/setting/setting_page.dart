import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/extension/app_localizations_context.dart';

import '../../navigation/app_router.gr.dart';

class SettigPage extends StatelessWidget {
  const SettigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const LoginRoute());
                },
                child: Text(context.loc.login),
              ),
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
