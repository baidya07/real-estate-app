import 'package:auto_route/auto_route.dart';
import 'package:real_estate_app/app/pages/home/home_page.dart';
import 'package:real_estate_app/app/pages/search/search_page.dart';
import 'package:real_estate_app/app/pages/splash_screen/splash_screen.dart';

import '../app/pages/category/category_page.dart';
import '../app/pages/favourite/favorite_page.dart';
import '../app/pages/landing/landing_page.dart';
import '../app/pages/profile_page/profile_page.dart';
import '../app/pages/search/detail.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true,),
    AutoRoute(page: HouseDetailPage,),
    AutoRoute(path: 'category', page: CategoryPage),

    AutoRoute(
      page: LandingPage,
      path: '/landing',
      // name: 'landingRouter',
      children: [
        AutoRoute(
          name: 'homeRouter',
          path: '',
          page: HomePage,
        ),
        AutoRoute(name: 'searchRouter', path: 'search', page: SearchPage),
        AutoRoute(name: 'favoriteRouter', path: 'favorite', page: FavoritePage),
        AutoRoute(name: 'profileRouter', path: 'profile', page: ProfilePage),
        // AutoRoute(
        //   path: 'profile',
        //   page: ProfilePage,
        // ),
      ],
    ),

  ],
)
class $AppRouter {}
