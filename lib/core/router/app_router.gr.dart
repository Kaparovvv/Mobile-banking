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
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

import '../../features/auth/presentation/screens/auth_screen.dart' as _i1;
import '../../features/documents/data/models/id_card.dart' as _i18;
import '../../features/documents/presentation/screens/document_details_screen.dart'
    as _i9;
import '../../features/documents/presentation/screens/documents_screen.dart'
    as _i8;
import '../../features/history/presentation/screens/history_screen.dart'
    as _i14;
import '../../features/main/presentation/screens/child_info.dart' as _i12;
import '../../features/main/presentation/screens/main_screen.dart' as _i13;
import '../../features/main/presentation/screens/marriage_registration.dart'
    as _i7;
import '../../features/main/presentation/screens/public_services_screen.dart'
    as _i4;
import '../../features/main/presentation/screens/registration_child_birth.dart'
    as _i6;
import '../../features/main/presentation/screens/services_for_my_family.dart'
    as _i5;
import '../../features/notification/presentation/bloc/notification_bloc.dart'
    as _i19;
import '../../features/notification/presentation/pages/notification_list_screen.dart'
    as _i11;
import '../../features/notification/presentation/pages/notification_screen.dart'
    as _i10;
import '../../features/profile/presentation/screens/profile_screen.dart' as _i3;
import 'auth_guard.dart' as _i17;
import 'nav_bar_router.dart' as _i2;

class AppRouter extends _i15.RootStackRouter {
  AppRouter({
    _i16.GlobalKey<_i16.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i17.AuthGuard authGuard;

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AuthScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AuthScreenRouteArgs>(
          orElse: () => const AuthScreenRouteArgs());
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.AuthScreen(
          key: args.key,
          onLoginResult: args.onLoginResult,
        ),
      );
    },
    NavBarRouterRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.NavBarRouter(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileScreen(),
      );
    },
    PublicServicesScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PublicServicesScreen(),
      );
    },
    ServicesForMyFamilyScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ServicesForMyFamilyScreen(),
      );
    },
    RegistrationChildBirthScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.RegistrationChildBirthScreen(),
      );
    },
    MarriageRegistrationScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.MarriageRegistrationScreen(),
      );
    },
    DocumentsScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.DocumentsScreen(),
      );
    },
    DocumentDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentDetailsScreenRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.DocumentDetailsScreen(
          key: args.key,
          title: args.title,
          idCard: args.idCard,
        ),
      );
    },
    NotificationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationScreenRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.NotificationScreen(
          key: args.key,
          notificationData: args.notificationData,
        ),
      );
    },
    NotificationListScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationListScreenRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.NotificationListScreen(
          key: args.key,
          notifications: args.notifications,
        ),
      );
    },
    ChildInfoScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.ChildInfoScreen(),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.MainScreen(),
      );
    },
    HistoryScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.HistoryScreen(),
      );
    },
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'navbar',
          fullMatch: true,
        ),
        _i15.RouteConfig(
          AuthScreenRoute.name,
          path: 'loginScreen',
        ),
        _i15.RouteConfig(
          NavBarRouterRoute.name,
          path: 'navbar',
          guards: [authGuard],
          children: [
            _i15.RouteConfig(
              MainScreenRoute.name,
              path: 'mainScreen',
              parent: NavBarRouterRoute.name,
            ),
            _i15.RouteConfig(
              HistoryScreenRoute.name,
              path: 'history',
              parent: NavBarRouterRoute.name,
            ),
          ],
        ),
        _i15.RouteConfig(
          ProfileScreenRoute.name,
          path: 'profile',
        ),
        _i15.RouteConfig(
          PublicServicesScreenRoute.name,
          path: 'publicServices',
        ),
        _i15.RouteConfig(
          ServicesForMyFamilyScreenRoute.name,
          path: 'servicesForMyFamily',
        ),
        _i15.RouteConfig(
          RegistrationChildBirthScreenRoute.name,
          path: 'regisChild',
        ),
        _i15.RouteConfig(
          MarriageRegistrationScreenRoute.name,
          path: 'marriageRegis',
        ),
        _i15.RouteConfig(
          DocumentsScreenRoute.name,
          path: 'documents',
        ),
        _i15.RouteConfig(
          DocumentDetailsScreenRoute.name,
          path: 'documentDetails',
        ),
        _i15.RouteConfig(
          NotificationScreenRoute.name,
          path: 'notification',
        ),
        _i15.RouteConfig(
          NotificationListScreenRoute.name,
          path: 'notificationList',
        ),
        _i15.RouteConfig(
          ChildInfoScreenRoute.name,
          path: 'childInfo',
        ),
      ];
}

/// generated route for
/// [_i1.AuthScreen]
class AuthScreenRoute extends _i15.PageRouteInfo<AuthScreenRouteArgs> {
  AuthScreenRoute({
    _i16.Key? key,
    void Function(bool)? onLoginResult,
  }) : super(
          AuthScreenRoute.name,
          path: 'loginScreen',
          args: AuthScreenRouteArgs(
            key: key,
            onLoginResult: onLoginResult,
          ),
        );

  static const String name = 'AuthScreenRoute';
}

class AuthScreenRouteArgs {
  const AuthScreenRouteArgs({
    this.key,
    this.onLoginResult,
  });

  final _i16.Key? key;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'AuthScreenRouteArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [_i2.NavBarRouter]
class NavBarRouterRoute extends _i15.PageRouteInfo<void> {
  const NavBarRouterRoute({List<_i15.PageRouteInfo>? children})
      : super(
          NavBarRouterRoute.name,
          path: 'navbar',
          initialChildren: children,
        );

  static const String name = 'NavBarRouterRoute';
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileScreenRoute extends _i15.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i4.PublicServicesScreen]
class PublicServicesScreenRoute extends _i15.PageRouteInfo<void> {
  const PublicServicesScreenRoute()
      : super(
          PublicServicesScreenRoute.name,
          path: 'publicServices',
        );

  static const String name = 'PublicServicesScreenRoute';
}

/// generated route for
/// [_i5.ServicesForMyFamilyScreen]
class ServicesForMyFamilyScreenRoute extends _i15.PageRouteInfo<void> {
  const ServicesForMyFamilyScreenRoute()
      : super(
          ServicesForMyFamilyScreenRoute.name,
          path: 'servicesForMyFamily',
        );

  static const String name = 'ServicesForMyFamilyScreenRoute';
}

/// generated route for
/// [_i6.RegistrationChildBirthScreen]
class RegistrationChildBirthScreenRoute extends _i15.PageRouteInfo<void> {
  const RegistrationChildBirthScreenRoute()
      : super(
          RegistrationChildBirthScreenRoute.name,
          path: 'regisChild',
        );

  static const String name = 'RegistrationChildBirthScreenRoute';
}

/// generated route for
/// [_i7.MarriageRegistrationScreen]
class MarriageRegistrationScreenRoute extends _i15.PageRouteInfo<void> {
  const MarriageRegistrationScreenRoute()
      : super(
          MarriageRegistrationScreenRoute.name,
          path: 'marriageRegis',
        );

  static const String name = 'MarriageRegistrationScreenRoute';
}

/// generated route for
/// [_i8.DocumentsScreen]
class DocumentsScreenRoute extends _i15.PageRouteInfo<void> {
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
    extends _i15.PageRouteInfo<DocumentDetailsScreenRouteArgs> {
  DocumentDetailsScreenRoute({
    _i16.Key? key,
    required String title,
    required _i18.IDCard idCard,
  }) : super(
          DocumentDetailsScreenRoute.name,
          path: 'documentDetails',
          args: DocumentDetailsScreenRouteArgs(
            key: key,
            title: title,
            idCard: idCard,
          ),
        );

  static const String name = 'DocumentDetailsScreenRoute';
}

class DocumentDetailsScreenRouteArgs {
  const DocumentDetailsScreenRouteArgs({
    this.key,
    required this.title,
    required this.idCard,
  });

  final _i16.Key? key;

  final String title;

  final _i18.IDCard idCard;

  @override
  String toString() {
    return 'DocumentDetailsScreenRouteArgs{key: $key, title: $title, idCard: $idCard}';
  }
}

/// generated route for
/// [_i10.NotificationScreen]
class NotificationScreenRoute
    extends _i15.PageRouteInfo<NotificationScreenRouteArgs> {
  NotificationScreenRoute({
    _i16.Key? key,
    required _i19.NotificationModel notificationData,
  }) : super(
          NotificationScreenRoute.name,
          path: 'notification',
          args: NotificationScreenRouteArgs(
            key: key,
            notificationData: notificationData,
          ),
        );

  static const String name = 'NotificationScreenRoute';
}

class NotificationScreenRouteArgs {
  const NotificationScreenRouteArgs({
    this.key,
    required this.notificationData,
  });

  final _i16.Key? key;

  final _i19.NotificationModel notificationData;

  @override
  String toString() {
    return 'NotificationScreenRouteArgs{key: $key, notificationData: $notificationData}';
  }
}

/// generated route for
/// [_i11.NotificationListScreen]
class NotificationListScreenRoute
    extends _i15.PageRouteInfo<NotificationListScreenRouteArgs> {
  NotificationListScreenRoute({
    _i16.Key? key,
    required List<_i19.NotificationModel> notifications,
  }) : super(
          NotificationListScreenRoute.name,
          path: 'notificationList',
          args: NotificationListScreenRouteArgs(
            key: key,
            notifications: notifications,
          ),
        );

  static const String name = 'NotificationListScreenRoute';
}

class NotificationListScreenRouteArgs {
  const NotificationListScreenRouteArgs({
    this.key,
    required this.notifications,
  });

  final _i16.Key? key;

  final List<_i19.NotificationModel> notifications;

  @override
  String toString() {
    return 'NotificationListScreenRouteArgs{key: $key, notifications: $notifications}';
  }
}

/// generated route for
/// [_i12.ChildInfoScreen]
class ChildInfoScreenRoute extends _i15.PageRouteInfo<void> {
  const ChildInfoScreenRoute()
      : super(
          ChildInfoScreenRoute.name,
          path: 'childInfo',
        );

  static const String name = 'ChildInfoScreenRoute';
}

/// generated route for
/// [_i13.MainScreen]
class MainScreenRoute extends _i15.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: 'mainScreen',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i14.HistoryScreen]
class HistoryScreenRoute extends _i15.PageRouteInfo<void> {
  const HistoryScreenRoute()
      : super(
          HistoryScreenRoute.name,
          path: 'history',
        );

  static const String name = 'HistoryScreenRoute';
}
