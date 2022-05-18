import 'package:auto_route/auto_route.dart';
import 'package:real_estate_app/app/pages/dashboard_page.dart';
import 'package:real_estate_app/app/pages/search/search_page.dart';
import 'package:real_estate_app/app/pages/splash_screen/splash_screen.dart';

import '../app/pages/search/search_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
    ),
    AutoRoute(page: DashboardPage),
    AutoRoute(page: SearchPage, initial: true),
  ],
)
class $AppRouter {}
