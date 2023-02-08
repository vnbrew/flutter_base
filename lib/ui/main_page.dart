import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/utils/rive_utils.dart';
import 'package:rive/rive.dart';

import '../navigation/app_router.gr.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(context) {
    return AutoTabsScaffold(
        scaffoldKey: _scaffoldkey,
        builder: (context, child, animation) {
          return ScaleTransition(scale: animation, child: child);
        },
        routes: const [
          HomeRouter(),
          SettingRouter(),
          LandRouter(),
          MediationRouter(),
          ProfileRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return SafeArea(
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    bottomNavs.length,
                    (index) => GestureDetector(
                      onTap: () {
                        if (index != tabsRouter.activeIndex) {
                          bottomNavs[tabsRouter.activeIndex].active?.change(false);
                          tabsRouter.setActiveIndex(index);
                          bottomNavs[index].active?.change(true);
                        } else {
                          Future.delayed(const Duration(seconds: 1), () {
                            bottomNavs[index].active?.change(false);
                          });
                        }
                      },
                      child: Opacity(
                        opacity: tabsRouter.activeIndex == index ? 1 : 0.5,
                        child: SizedBox(
                          width: 36,
                          height: 36,
                          child: RiveAnimation.asset(
                            'assets/rive/animated_icon.riv',
                            artboard: bottomNavs[index].artBoard,
                            onInit: ((artboard) {
                              StateMachineController controller = RiveUtils.getRiveController(
                                artboard,
                                stateMachineName: bottomNavs[index].stateMachineName,
                              );
                              bottomNavs[index].active = controller.findSMI("active") as SMIBool;
                              // bottomNavs[index].idle = controller.findSMI("idle") as SMIBool;
                            }),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class RiveAssets {
  final String artBoard, stateMachineName, name;
  late SMIBool? active, idle;

  RiveAssets({
    required this.artBoard,
    required this.stateMachineName,
    required this.name,
    this.active,
    this.idle,
  });
}

List<RiveAssets> bottomNavs = [
  RiveAssets(artBoard: "HOME", stateMachineName: "HOME_interactivity", name: "Home"),
  RiveAssets(artBoard: "CHAT", stateMachineName: "CHAT_Interactivity", name: "Chat"),
  RiveAssets(artBoard: "SEARCH", stateMachineName: "SEARCH_Interactivity", name: "Search"),
  RiveAssets(artBoard: "SETTINGS", stateMachineName: "SETTINGS_Interactivity", name: "Setting"),
  RiveAssets(artBoard: "USER", stateMachineName: "USER_Interactivity", name: "User"),
];
