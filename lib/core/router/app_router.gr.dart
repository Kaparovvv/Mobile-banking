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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../feature/login/prenestation/login_screen.dart' as _i1;
import '../../feature/main/presentation/screens/home_screen.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainScreen(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'loginScreen',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          LoginScreenRoute.name,
          path: 'loginScreen',
        ),
        _i3.RouteConfig(
          MainScreenRoute.name,
          path: 'mainScreen',
        ),
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i3.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: 'loginScreen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i2.MainScreen]
class MainScreenRoute extends _i3.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: 'mainScreen',
        );

  static const String name = 'MainScreenRoute';
}
