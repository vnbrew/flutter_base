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
    CustomRoute(path: 'login', page: LoginPage, transitionsBuilder: TransitionsBuilders.slideBottom),
    mainScreenRouter,
  ],
)
class $AppRouter {}

const mainScreenRouter = CustomRoute<dynamic>(
  path: '/',
  page: MainPage,
  children: [
    CustomRoute(
      path: "home",
      name: "HomeRouter",
      page: EmptyRouterPage,
      children: [
        CustomRoute(
          path: "",
          page: HomePage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "detail",
          page: DetailPage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "download",
          page: DownloadPage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
      ],
    ),
    CustomRoute(
      path: "setting",
      name: "SettingRouter",
      page: EmptyRouterPage,
      children: [
        CustomRoute(
          path: "",
          page: SettigPage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "about",
          page: AboutPage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "language",
          page: LanguagePage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "theme",
          page: ThemePage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
      ],
    ),
    CustomRoute(
      path: "land",
      name: "LandRouter",
      page: EmptyRouterPage,
      children: [
        CustomRoute(
          path: "",
          page: SettigPage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "about",
          page: AboutPage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "language",
          page: LanguagePage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "theme",
          page: ThemePage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
      ],
    ),
    CustomRoute(
      path: "mediation",
      name: "MediationRouter",
      page: EmptyRouterPage,
      children: [
        CustomRoute(
          path: "",
          page: SettigPage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "about",
          page: AboutPage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "language",
          page: LanguagePage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "theme",
          page: ThemePage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
      ],
    ),
    CustomRoute(
      path: "profile",
      name: "ProfileRouter",
      page: EmptyRouterPage,
      children: [
        CustomRoute(
          path: "",
          page: SettigPage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "about",
          page: AboutPage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "language",
          page: LanguagePage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: "theme",
          page: ThemePage,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
      ],
    ),
  ],
);
