import 'package:auto_route/auto_route.dart';
import 'package:flutter_base/navigation/app_router.gr.dart';
import 'package:flutter/foundation.dart' show TargetPlatform, defaultTargetPlatform;

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      defaultTargetPlatform == TargetPlatform.iOS ? const RouteType.cupertino() : RouteType.material();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: '/',
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: '/main',
          page: MainRoute.page,
          children: [
            CustomRoute(
              path: "",
              page: HomeEmptyRoute.page,
              children: [
                CustomRoute(
                  path: "",
                  page: HomeRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "detail",
                  page: DetailRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "download",
                  page: DownloadRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
              ],
            ),
            CustomRoute(
              path: "setting",
              page: SettingEmptyRoute.page,
              children: [
                CustomRoute(
                  path: "",
                  page: SettingRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "about",
                  page: AboutRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "language",
                  page: LanguageRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "theme",
                  page: ThemeRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
              ],
            ),
            CustomRoute(
              path: "land",
              page: LandEmptyRoute.page,
              children: [
                CustomRoute(
                  path: "",
                  page: SettingRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "about",
                  page: AboutRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "language",
                  page: LanguageRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "theme",
                  page: ThemeRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
              ],
            ),
            CustomRoute(
              path: "mediation",
              page: MediationEmptyRoute.page,
              children: [
                CustomRoute(
                  path: "",
                  page: SettingRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "about",
                  page: AboutRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "language",
                  page: LanguageRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "theme",
                  page: ThemeRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
              ],
            ),
            CustomRoute(
              path: "profile",
              page: ProfileEmptyRoute.page,
              children: [
                CustomRoute(
                  path: "",
                  page: SettingRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "about",
                  page: AboutRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "language",
                  page: LanguageRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  path: "theme",
                  page: ThemeRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
              ],
            ),
          ],
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
