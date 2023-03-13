import 'package:auto_route/auto_route.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/main_screen.dart';
import 'package:my_family_flutter/feature/auth/presentation/screens/login_screen.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/public_services_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'loginScreen', page: LoginScreen, initial: true),
    AutoRoute(path: 'mainScreen', page: MainScreen, initial: false),
    AutoRoute(path: 'publicServices', page: PublicServicesScreen),
  ],
)
class $AppRouter {}
