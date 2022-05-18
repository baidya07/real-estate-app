import 'package:auto_route/auto_route.dart';
import 'package:real_estate_app/app/pages/dashboard_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DashboardPage, initial: true),
  ],
)
class $AppRouter {}
