import 'package:auto_route/auto_route.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/home_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'mainScreen', page: MainScreen, initial: true),
  ],
)
class $AppRouter {}
