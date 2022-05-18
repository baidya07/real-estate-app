// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../app/pages/favourite/favorite_page.dart' as _i5;
import '../app/pages/home/home_page.dart' as _i3;
import '../app/pages/landing/landing_page.dart' as _i2;
import '../app/pages/profile_page/profile_page.dart' as _i6;
import '../app/pages/search/search_page.dart' as _i4;
import '../app/pages/splash_screen/splash_screen.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LandingRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LandingPage());
    },
    HomeRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    SearchRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SearchPage());
    },
    FavoriteRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FavoritePage());
    },
    ProfileRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/landing', fullMatch: true),
        _i7.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i7.RouteConfig(LandingRoute.name, path: '/landing', children: [
          _i7.RouteConfig(HomeRouter.name, path: '', parent: LandingRoute.name),
          _i7.RouteConfig(SearchRouter.name,
              path: 'search', parent: LandingRoute.name),
          _i7.RouteConfig(FavoriteRouter.name,
              path: 'favorite', parent: LandingRoute.name),
          _i7.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: LandingRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LandingPage]
class LandingRoute extends _i7.PageRouteInfo<void> {
  const LandingRoute({List<_i7.PageRouteInfo>? children})
      : super(LandingRoute.name, path: '/landing', initialChildren: children);

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: '');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.SearchPage]
class SearchRouter extends _i7.PageRouteInfo<void> {
  const SearchRouter() : super(SearchRouter.name, path: 'search');

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i5.FavoritePage]
class FavoriteRouter extends _i7.PageRouteInfo<void> {
  const FavoriteRouter() : super(FavoriteRouter.name, path: 'favorite');

  static const String name = 'FavoriteRouter';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
