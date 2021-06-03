import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key, required this.tabsRouter})
      : super(key: key);

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: 'Home',
        ),
        // const BottomNavigationBarItem(
        //   icon: Icon(Icons.analytics_outlined),
        //   label: 'Analytics',
        // ),
        // const BottomNavigationBarItem(
        //   icon: Icon(Icons.account_tree_outlined),
        //   label: 'Peers',
        // ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined),
          label: 'Explorer',
        ),
      ],
    );
  }
}
