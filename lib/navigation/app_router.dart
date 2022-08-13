import 'package:auto_route/auto_route.dart';

import '../ui/login/login_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(page: LoginPage, initial: true),
  ],
)
class $AppRouter {}
