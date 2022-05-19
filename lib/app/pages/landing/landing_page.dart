import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_app/routes/router.gr.dart';

import '../../resources/ui_assets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      routes: const [
        HomeRouter(),
        SearchRouter(),
        FavoriteRouter(),
        ProfileRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(

              backgroundColor: Theme.of(context).primaryColor,
              label: "Home",
              icon: _NavigationIcons(
                iconName:'home_icon.svg',
                tabsRouter: tabsRouter,
                index: 0,
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              label: "Search",
              icon: _NavigationIcons(
                iconName: 'search_icon.svg',
                tabsRouter: tabsRouter,
                index: 1,
              ),

            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              label: "Favorite",
              icon: const Icon(Icons.favorite_border_outlined,size: 19,),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              label: "Profile",
              icon: _NavigationIcons(
                iconName: 'person_icon.svg',
                tabsRouter: tabsRouter,
                index: 3,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _NavigationIcons extends StatelessWidget {
  final TabsRouter tabsRouter;

  ///icons from local assets
  final String iconName;
  final int index;

  const _NavigationIcons({
    Key? key,
    required this.tabsRouter,
    required this.iconName,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: SvgPicture.asset(
        UIAssets.getIcon(iconName),
        width: 18,
        color: tabsRouter.activeIndex == index ? Colors.white : Colors.grey,
      ),
    );
  }
}
