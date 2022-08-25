import 'package:auto_route/auto_route.dart';
import 'package:flutter_base/ui/about/about_page.dart';
import 'package:flutter_base/ui/detail/detail_page.dart';
import 'package:flutter_base/ui/download/download_page.dart';
import 'package:flutter_base/ui/home/home_page.dart';
import 'package:flutter_base/ui/login/login_page.dart';
import 'package:flutter_base/ui/main_page.dart';
import 'package:flutter_base/ui/setting/setting_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      path: 'login',
      page: LoginPage,
      transitionsBuilder: TransitionsBuilders.slideBottom
    ),
    AutoRoute(
      path: '/', 
      page: MainPage,
      children: [
        AutoRoute(
          path: "home",
          name: "HomeRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: "",  page: HomePage),
            AutoRoute(path: "detail",page: DetailPage),
            AutoRoute(path: "download",page: DownloadPage),
          ]
        ),
        AutoRoute(
          path: "setting",
          name: "SettingRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: "", page: SettigPage),
            AutoRoute(path: "about", page: AboutPage),
          ]
        )
      ]
    ),
  ],
)
class $AppRouter {}
