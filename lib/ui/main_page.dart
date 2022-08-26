import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../navigation/app_router.gr.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Setting',
            ),
          ],
        );
      },
    );
  }
}
