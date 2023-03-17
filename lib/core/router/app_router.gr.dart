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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../feature/auth/presentation/screens/auth_screen.dart' as _i1;
import '../../feature/documents/presentation/screens/document_details_screen.dart'
    as _i8;
import '../../feature/documents/presentation/screens/documents_screen.dart'
    as _i7;
import '../../feature/main/presentation/screens/main_screen.dart' as _i2;
import '../../feature/main/presentation/screens/marriage_registration.dart'
    as _i6;
import '../../feature/main/presentation/screens/public_services_screen.dart'
    as _i3;
import '../../feature/main/presentation/screens/registration_child_birth.dart'
    as _i5;
import '../../feature/main/presentation/screens/services_for_my_family.dart'
    as _i4;
import 'auth_guard.dart' as _i11;

class AppRouter extends _i9.RootStackRouter {
  AppRouter({
    _i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AuthScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AuthScreenRouteArgs>(
          orElse: () => const AuthScreenRouteArgs());
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.AuthScreen(
          key: args.key,
          onLoginResult: args.onLoginResult,
          isBackButton: args.isBackButton,
        ),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainScreen(),
      );
    },
    PublicServicesScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PublicServicesScreen(),
      );
    },
    ServicesForMyFamilyScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ServicesForMyFamilyScreen(),
      );
    },
    RegistrationChildBirthScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.RegistrationChildBirthScreen(),
      );
    },
    MarriageRegistrationScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.MarriageRegistrationScreen(),
      );
    },
    DocumentsScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.DocumentsScreen(),
      );
    },
    DocumentDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentDetailsScreenRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.DocumentDetailsScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'mainScreen',
          fullMatch: true,
        ),
        _i9.RouteConfig(
          AuthScreenRoute.name,
          path: 'loginScreen',
        ),
        _i9.RouteConfig(
          MainScreenRoute.name,
          path: 'mainScreen',
          guards: [authGuard],
        ),
        _i9.RouteConfig(
          PublicServicesScreenRoute.name,
          path: 'publicServices',
        ),
        _i9.RouteConfig(
          ServicesForMyFamilyScreenRoute.name,
          path: 'servicesForMyFamily',
        ),
        _i9.RouteConfig(
          RegistrationChildBirthScreenRoute.name,
          path: 'regisChild',
        ),
        _i9.RouteConfig(
          MarriageRegistrationScreenRoute.name,
          path: 'marriageRegis',
        ),
        _i9.RouteConfig(
          DocumentsScreenRoute.name,
          path: 'documents',
        ),
        _i9.RouteConfig(
          DocumentDetailsScreenRoute.name,
          path: 'documentDetails',
        ),
      ];
}

/// generated route for
/// [_i1.AuthScreen]
class AuthScreenRoute extends _i9.PageRouteInfo<AuthScreenRouteArgs> {
  AuthScreenRoute({
    _i10.Key? key,
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

  final _i10.Key? key;

  final void Function(bool)? onLoginResult;

  final bool isBackButton;

  @override
  String toString() {
    return 'AuthScreenRouteArgs{key: $key, onLoginResult: $onLoginResult, isBackButton: $isBackButton}';
  }
}

/// generated route for
/// [_i2.MainScreen]
class MainScreenRoute extends _i9.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: 'mainScreen',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i3.PublicServicesScreen]
class PublicServicesScreenRoute extends _i9.PageRouteInfo<void> {
  const PublicServicesScreenRoute()
      : super(
          PublicServicesScreenRoute.name,
          path: 'publicServices',
        );

  static const String name = 'PublicServicesScreenRoute';
}

/// generated route for
/// [_i4.ServicesForMyFamilyScreen]
class ServicesForMyFamilyScreenRoute extends _i9.PageRouteInfo<void> {
  const ServicesForMyFamilyScreenRoute()
      : super(
          ServicesForMyFamilyScreenRoute.name,
          path: 'servicesForMyFamily',
        );

  static const String name = 'ServicesForMyFamilyScreenRoute';
}

/// generated route for
/// [_i5.RegistrationChildBirthScreen]
class RegistrationChildBirthScreenRoute extends _i9.PageRouteInfo<void> {
  const RegistrationChildBirthScreenRoute()
      : super(
          RegistrationChildBirthScreenRoute.name,
          path: 'regisChild',
        );

  static const String name = 'RegistrationChildBirthScreenRoute';
}

/// generated route for
/// [_i6.MarriageRegistrationScreen]
class MarriageRegistrationScreenRoute extends _i9.PageRouteInfo<void> {
  const MarriageRegistrationScreenRoute()
      : super(
          MarriageRegistrationScreenRoute.name,
          path: 'marriageRegis',
        );

  static const String name = 'MarriageRegistrationScreenRoute';
}

/// generated route for
/// [_i7.DocumentsScreen]
class DocumentsScreenRoute extends _i9.PageRouteInfo<void> {
  const DocumentsScreenRoute()
      : super(
          DocumentsScreenRoute.name,
          path: 'documents',
        );

  static const String name = 'DocumentsScreenRoute';
}

/// generated route for
/// [_i8.DocumentDetailsScreen]
class DocumentDetailsScreenRoute
    extends _i9.PageRouteInfo<DocumentDetailsScreenRouteArgs> {
  DocumentDetailsScreenRoute({
    _i10.Key? key,
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

  final _i10.Key? key;

  final String title;

  @override
  String toString() {
    return 'DocumentDetailsScreenRouteArgs{key: $key, title: $title}';
  }
}
