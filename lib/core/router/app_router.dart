import 'package:auto_route/auto_route.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/home_screen.dart';
import 'package:my_family_flutter/feature/login/prenestation/login_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'loginScreen', page: LoginScreen, initial: true),
    AutoRoute(path: 'mainScreen', page: MainScreen, initial: false),
  ],
)
class $AppRouter {}
