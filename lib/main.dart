import 'package:flutter/material.dart';
import 'package:flutter_base/app/utils/gen/localized/l10n.dart';
import 'package:flutter_base/di/di.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'navigation/app_router.gr.dart';

void main() async {
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar with Nested Routing',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      supportedLocales: AppLocalized.delegate.supportedLocales,
      locale: const Locale('en', 'EN'),
      localizationsDelegates: const [
        AppLocalized.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}
