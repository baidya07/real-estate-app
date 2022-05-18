// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../app/pages/favourite/favorite_page.dart' as _i6;
import '../app/pages/home/home_page.dart' as _i4;
import '../app/pages/landing/landing_page.dart' as _i3;
import '../app/pages/profile_page/profile_page.dart' as _i7;
import '../app/pages/search/detail.dart' as _i2;
import '../app/pages/search/search_page.dart' as _i5;
import '../app/pages/splash_screen/splash_screen.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HouseDetailRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HouseDetailPage());
    },
    LandingRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LandingPage());
    },
    HomeRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    SearchRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SearchPage());
    },
    FavoriteRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.FavoritePage());
    },
    ProfileRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRoute.name, path: '/'),
        _i8.RouteConfig(HouseDetailRoute.name, path: '/house-detail-page'),
        _i8.RouteConfig(LandingRoute.name, path: '/landing', children: [
          _i8.RouteConfig(HomeRouter.name, path: '', parent: LandingRoute.name),
          _i8.RouteConfig(SearchRouter.name,
              path: 'search', parent: LandingRoute.name),
          _i8.RouteConfig(FavoriteRouter.name,
              path: 'favorite', parent: LandingRoute.name),
          _i8.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: LandingRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HouseDetailPage]
class HouseDetailRoute extends _i8.PageRouteInfo<void> {
  const HouseDetailRoute()
      : super(HouseDetailRoute.name, path: '/house-detail-page');

  static const String name = 'HouseDetailRoute';
}

/// generated route for
/// [_i3.LandingPage]
class LandingRoute extends _i8.PageRouteInfo<void> {
  const LandingRoute({List<_i8.PageRouteInfo>? children})
      : super(LandingRoute.name, path: '/landing', initialChildren: children);

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: '');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i5.SearchPage]
class SearchRouter extends _i8.PageRouteInfo<void> {
  const SearchRouter() : super(SearchRouter.name, path: 'search');

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i6.FavoritePage]
class FavoriteRouter extends _i8.PageRouteInfo<void> {
  const FavoriteRouter() : super(FavoriteRouter.name, path: 'favorite');

  static const String name = 'FavoriteRouter';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRouter extends _i8.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
