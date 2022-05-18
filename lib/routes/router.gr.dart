// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../app/pages/dashboard_page.dart' as _i2;
import '../app/pages/favorite_page/favorite_page.dart' as _i5;
import '../app/pages/profile_page/profile_page.dart' as _i4;
import '../app/pages/search/search_page.dart' as _i3;
import '../app/pages/splash_screen/splash_screen.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    DashboardRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardPage());
    },
    SearchRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SearchPage());
    },
    ProfileRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfilePage());
    },
    FavoriteRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FavoritePage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i6.RouteConfig(DashboardRoute.name, path: '/dashboard-page'),
        _i6.RouteConfig(SearchRoute.name, path: '/search-page'),
        _i6.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i6.RouteConfig(FavoriteRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/dashboard-page');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.SearchPage]
class SearchRoute extends _i6.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '/search-page');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i5.FavoritePage]
class FavoriteRoute extends _i6.PageRouteInfo<void> {
  const FavoriteRoute() : super(FavoriteRoute.name, path: '/');

  static const String name = 'FavoriteRoute';
}
