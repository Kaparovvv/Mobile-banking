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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../features/auth/presentation/screens/auth_screen.dart' as _i1;
import '../../features/documents/presentation/screens/document_details_screen.dart'
    as _i9;
import '../../features/documents/presentation/screens/documents_screen.dart'
    as _i8;
import '../../features/history/presentation/screens/history_screen.dart'
    as _i11;
import '../../features/main/presentation/screens/main_screen.dart' as _i10;
import '../../features/main/presentation/screens/marriage_registration.dart'
    as _i7;
import '../../features/main/presentation/screens/public_services_screen.dart'
    as _i4;
import '../../features/main/presentation/screens/registration_child_birth.dart'
    as _i6;
import '../../features/main/presentation/screens/services_for_my_family.dart'
    as _i5;
import '../../features/profile/presentation/screens/profile_screen.dart' as _i3;
import 'auth_guard.dart' as _i14;
import 'nav_bar_router.dart' deferred as _i2;

class AppRouter extends _i12.RootStackRouter {
  AppRouter({
    _i13.GlobalKey<_i13.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i14.AuthGuard authGuard;

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AuthScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AuthScreenRouteArgs>(
          orElse: () => const AuthScreenRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.AuthScreen(
          key: args.key,
          onLoginResult: args.onLoginResult,
          isBackButton: args.isBackButton,
        ),
      );
    },
    NavBarRouterRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.NavBarRouter(),
        ),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileScreen(),
      );
    },
    PublicServicesScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PublicServicesScreen(),
      );
    },
    ServicesForMyFamilyScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ServicesForMyFamilyScreen(),
      );
    },
    RegistrationChildBirthScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.RegistrationChildBirthScreen(),
      );
    },
    MarriageRegistrationScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.MarriageRegistrationScreen(),
      );
    },
    DocumentsScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.DocumentsScreen(),
      );
    },
    DocumentDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentDetailsScreenRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.DocumentDetailsScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.MainScreen(),
      );
    },
    HistoryScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.HistoryScreen(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'navbar',
          fullMatch: true,
        ),
        _i12.RouteConfig(
          AuthScreenRoute.name,
          path: 'loginScreen',
        ),
        _i12.RouteConfig(
          NavBarRouterRoute.name,
          path: 'navbar',
          deferredLoading: true,
          guards: [authGuard],
          children: [
            _i12.RouteConfig(
              MainScreenRoute.name,
              path: 'mainScreen',
              parent: NavBarRouterRoute.name,
            ),
            _i12.RouteConfig(
              HistoryScreenRoute.name,
              path: 'history',
              parent: NavBarRouterRoute.name,
            ),
          ],
        ),
        _i12.RouteConfig(
          ProfileScreenRoute.name,
          path: 'profile',
        ),
        _i12.RouteConfig(
          PublicServicesScreenRoute.name,
          path: 'publicServices',
        ),
        _i12.RouteConfig(
          ServicesForMyFamilyScreenRoute.name,
          path: 'servicesForMyFamily',
        ),
        _i12.RouteConfig(
          RegistrationChildBirthScreenRoute.name,
          path: 'regisChild',
        ),
        _i12.RouteConfig(
          MarriageRegistrationScreenRoute.name,
          path: 'marriageRegis',
        ),
        _i12.RouteConfig(
          DocumentsScreenRoute.name,
          path: 'documents',
        ),
        _i12.RouteConfig(
          DocumentDetailsScreenRoute.name,
          path: 'documentDetails',
        ),
      ];
}

/// generated route for
/// [_i1.AuthScreen]
class AuthScreenRoute extends _i12.PageRouteInfo<AuthScreenRouteArgs> {
  AuthScreenRoute({
    _i13.Key? key,
    void Function(bool)? onLoginResult,
    bool isBackButton = false,
  }) : super(
          AuthScreenRoute.name,
          path: 'loginScreen',
          args: AuthScreenRouteArgs(
            key: key,
            onLoginResult: onLoginResult,
            isBackButton: isBackButton,
          ),
        );

  static const String name = 'AuthScreenRoute';
}

class AuthScreenRouteArgs {
  const AuthScreenRouteArgs({
    this.key,
    this.onLoginResult,
    this.isBackButton = false,
  });

  final _i13.Key? key;

  final void Function(bool)? onLoginResult;

  final bool isBackButton;

  @override
  String toString() {
    return 'AuthScreenRouteArgs{key: $key, onLoginResult: $onLoginResult, isBackButton: $isBackButton}';
  }
}

/// generated route for
/// [_i2.NavBarRouter]
class NavBarRouterRoute extends _i12.PageRouteInfo<void> {
  const NavBarRouterRoute({List<_i12.PageRouteInfo>? children})
      : super(
          NavBarRouterRoute.name,
          path: 'navbar',
          initialChildren: children,
        );

  static const String name = 'NavBarRouterRoute';
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileScreenRoute extends _i12.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i4.PublicServicesScreen]
class PublicServicesScreenRoute extends _i12.PageRouteInfo<void> {
  const PublicServicesScreenRoute()
      : super(
          PublicServicesScreenRoute.name,
          path: 'publicServices',
        );

  static const String name = 'PublicServicesScreenRoute';
}

/// generated route for
/// [_i5.ServicesForMyFamilyScreen]
class ServicesForMyFamilyScreenRoute extends _i12.PageRouteInfo<void> {
  const ServicesForMyFamilyScreenRoute()
      : super(
          ServicesForMyFamilyScreenRoute.name,
          path: 'servicesForMyFamily',
        );

  static const String name = 'ServicesForMyFamilyScreenRoute';
}

/// generated route for
/// [_i6.RegistrationChildBirthScreen]
class RegistrationChildBirthScreenRoute extends _i12.PageRouteInfo<void> {
  const RegistrationChildBirthScreenRoute()
      : super(
          RegistrationChildBirthScreenRoute.name,
          path: 'regisChild',
        );

  static const String name = 'RegistrationChildBirthScreenRoute';
}

/// generated route for
/// [_i7.MarriageRegistrationScreen]
class MarriageRegistrationScreenRoute extends _i12.PageRouteInfo<void> {
  const MarriageRegistrationScreenRoute()
      : super(
          MarriageRegistrationScreenRoute.name,
          path: 'marriageRegis',
        );

  static const String name = 'MarriageRegistrationScreenRoute';
}

/// generated route for
/// [_i8.DocumentsScreen]
class DocumentsScreenRoute extends _i12.PageRouteInfo<void> {
  const DocumentsScreenRoute()
      : super(
          DocumentsScreenRoute.name,
          path: 'documents',
        );

  static const String name = 'DocumentsScreenRoute';
}

/// generated route for
/// [_i9.DocumentDetailsScreen]
class DocumentDetailsScreenRoute
    extends _i12.PageRouteInfo<DocumentDetailsScreenRouteArgs> {
  DocumentDetailsScreenRoute({
    _i13.Key? key,
    required String title,
  }) : super(
          DocumentDetailsScreenRoute.name,
          path: 'documentDetails',
          args: DocumentDetailsScreenRouteArgs(
            key: key,
            title: title,
          ),
        );

  static const String name = 'DocumentDetailsScreenRoute';
}

class DocumentDetailsScreenRouteArgs {
  const DocumentDetailsScreenRouteArgs({
    this.key,
    required this.title,
  });

  final _i13.Key? key;

  final String title;

  @override
  String toString() {
    return 'DocumentDetailsScreenRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i10.MainScreen]
class MainScreenRoute extends _i12.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: 'mainScreen',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i11.HistoryScreen]
class HistoryScreenRoute extends _i12.PageRouteInfo<void> {
  const HistoryScreenRoute()
      : super(
          HistoryScreenRoute.name,
          path: 'history',
        );

  static const String name = 'HistoryScreenRoute';
}
