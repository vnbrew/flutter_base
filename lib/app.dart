import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_bloc.dart';
import 'package:flutter_base/app/app_event.dart';
import 'package:flutter_base/app/app_state.dart';
import 'package:flutter_base/app/utils/gen/localized/l10n.dart';
import 'package:flutter_base/di/di.dart';
import 'package:flutter_base/enum/enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'navigation/app_router.gr.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _appRouter = getIt<AppRouter>();
  final _appBloc = getIt<AppBloc>();

  @override
  void initState() {
    super.initState();
    _appBloc.add(const AppInitiated());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (previous, current) {
        bool build = previous.isDarkTheme != current.isDarkTheme ||
            previous.languageCode != current.languageCode;
        if (kDebugMode) {
          print('App -- BlocBuilder: $build previous$previous current$current');
        }
        return build;
      },
      builder: ((context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Bottom Nav Bar with Nested Routing',
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          supportedLocales: AppLocalized.delegate.supportedLocales,
          locale: state.languageCode == LanguageCode.en
              ? const Locale('en', 'EN')
              : const Locale('vi', 'VI'),
          localizationsDelegates: const [
            AppLocalized.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
        );
      }),
    );
  }
}
