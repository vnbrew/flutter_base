import 'package:auto_route/auto_route.dart';
import 'package:flutter_base/ui/about/about_page.dart';
import 'package:flutter_base/ui/detail/detail_page.dart';
import 'package:flutter_base/ui/download/download_page.dart';
import 'package:flutter_base/ui/home/home_page.dart';
import 'package:flutter_base/ui/language/language_page.dart';
import 'package:flutter_base/ui/login/login_page.dart';
import 'package:flutter_base/ui/main_page.dart';
import 'package:flutter_base/ui/setting/setting_page.dart';

import '../ui/theme/theme_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
        path: 'login',
        page: LoginPage,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    mainScreenRouter,
  ],
)
class $AppRouter {}

const mainScreenRouter = CustomRoute<dynamic>(
  path: '/',
  page: MainPage,
  transitionsBuilder: TransitionsBuilders.noTransition,
  children: [
    CustomRoute(
        path: "home",
        name: "HomeRouter",
        page: EmptyRouterPage,
        children: [
          CustomRoute(path: "", page: HomePage),
          CustomRoute(path: "detail", page: DetailPage),
          CustomRoute(path: "download", page: DownloadPage),
        ],),
    CustomRoute(
        path: "setting",
        name: "SettingRouter",
        page: EmptyRouterPage,
        children: [
          CustomRoute(path: "", page: SettigPage),
          CustomRoute(path: "about", page: AboutPage),
          CustomRoute(path: "language", page: LanguagePage),
          CustomRoute(path: "theme", page: ThemePage),
        ],),
  ]
);