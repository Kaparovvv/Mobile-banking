// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../feature/auth/presentation/screens/login_screen.dart' as _i1;
import '../../feature/main/presentation/screens/main_screen.dart' as _i2;
import '../../feature/main/presentation/screens/public_services_screen.dart'
    as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainScreen(),
      );
    },
    PublicServicesScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PublicServicesScreen(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'loginScreen',
          fullMatch: true,
        ),
        _i4.RouteConfig(
          LoginScreenRoute.name,
          path: 'loginScreen',
        ),
        _i4.RouteConfig(
          MainScreenRoute.name,
          path: 'mainScreen',
        ),
        _i4.RouteConfig(
          PublicServicesScreenRoute.name,
          path: 'publicServices',
        ),
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i4.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: 'loginScreen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i2.MainScreen]
class MainScreenRoute extends _i4.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: 'mainScreen',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i3.PublicServicesScreen]
class PublicServicesScreenRoute extends _i4.PageRouteInfo<void> {
  const PublicServicesScreenRoute()
      : super(
          PublicServicesScreenRoute.name,
          path: 'publicServices',
        );

  static const String name = 'PublicServicesScreenRoute';
}
