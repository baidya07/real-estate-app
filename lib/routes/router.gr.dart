// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/foundation.dart' as _i11;
import 'package:flutter/material.dart' as _i10;

import '../app/pages/category/category_page.dart' as _i3;
import '../app/pages/favourite/favorite_page.dart' as _i7;
import '../app/pages/home/home_page.dart' as _i5;
import '../app/pages/landing/landing_page.dart' as _i4;
import '../app/pages/profile_page/profile_page.dart' as _i8;
import '../app/pages/search/detail.dart' as _i2;
import '../app/pages/search/search_page.dart' as _i6;
import '../app/pages/splash_screen/splash_screen.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HouseDetailRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HouseDetailPage());
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>(
          orElse: () => const CategoryRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.CategoryPage(
              key: args.key,
              categoryType: args.categoryType,
              description: args.description,
              title: args.title,
              image: args.image,
              backgroundImage: args.backgroundImage));
    },
    LandingRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LandingPage());
    },
    HomeRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    SearchRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SearchPage());
    },
    FavoriteRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.FavoritePage());
    },
    ProfileRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProfilePage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashRoute.name, path: '/'),
        _i9.RouteConfig(HouseDetailRoute.name, path: '/house-detail-page'),
        _i9.RouteConfig(CategoryRoute.name, path: 'category'),
        _i9.RouteConfig(LandingRoute.name, path: '/landing', children: [
          _i9.RouteConfig(HomeRouter.name, path: '', parent: LandingRoute.name),
          _i9.RouteConfig(SearchRouter.name,
              path: 'search', parent: LandingRoute.name),
          _i9.RouteConfig(FavoriteRouter.name,
              path: 'favorite', parent: LandingRoute.name),
          _i9.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: LandingRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HouseDetailPage]
class HouseDetailRoute extends _i9.PageRouteInfo<void> {
  const HouseDetailRoute()
      : super(HouseDetailRoute.name, path: '/house-detail-page');

  static const String name = 'HouseDetailRoute';
}

/// generated route for
/// [_i3.CategoryPage]
class CategoryRoute extends _i9.PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute(
      {_i11.Key? key,
      String? categoryType,
      String? description,
      String? title,
      String? image,
      String? backgroundImage})
      : super(CategoryRoute.name,
            path: 'category',
            args: CategoryRouteArgs(
                key: key,
                categoryType: categoryType,
                description: description,
                title: title,
                image: image,
                backgroundImage: backgroundImage));

  static const String name = 'CategoryRoute';
}

class CategoryRouteArgs {
  const CategoryRouteArgs(
      {this.key,
      this.categoryType,
      this.description,
      this.title,
      this.image,
      this.backgroundImage});

  final _i11.Key? key;

  final String? categoryType;

  final String? description;

  final String? title;

  final String? image;

  final String? backgroundImage;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, categoryType: $categoryType, description: $description, title: $title, image: $image, backgroundImage: $backgroundImage}';
  }
}

/// generated route for
/// [_i4.LandingPage]
class LandingRoute extends _i9.PageRouteInfo<void> {
  const LandingRoute({List<_i9.PageRouteInfo>? children})
      : super(LandingRoute.name, path: '/landing', initialChildren: children);

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomeRouter extends _i9.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: '');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i6.SearchPage]
class SearchRouter extends _i9.PageRouteInfo<void> {
  const SearchRouter() : super(SearchRouter.name, path: 'search');

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i7.FavoritePage]
class FavoriteRouter extends _i9.PageRouteInfo<void> {
  const FavoriteRouter() : super(FavoriteRouter.name, path: 'favorite');

  static const String name = 'FavoriteRouter';
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRouter extends _i9.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
