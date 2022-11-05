import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/extension/app_localizations_context.dart';

import '../navigation/app_router.gr.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouter(),
        SettingRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.book),
              label: context.loc.home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.account_box),
              label: context.loc.setting,
            ),
          ],
        );
      }
    );
  }
}
