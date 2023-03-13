import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';

import 'core/exports/exports.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My Family',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: ThemeHelper.grey,
        appBarTheme: const AppBarTheme(backgroundColor: ThemeHelper.white),
        useMaterial3: true,
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
    );
  }
}
