import 'package:auto_route/auto_route.dart';
import 'package:real_estate_app/app/pages/dashboard_page.dart';

import '../app/pages/search/search_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: DashboardPage,
    ),
    AutoRoute(page: SearchPage, initial: true),
  ],
)
class $AppRouter {}
