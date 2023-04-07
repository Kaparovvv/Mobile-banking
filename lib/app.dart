import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/router/auth_guard.dart';
import 'package:my_family_flutter/features/auth/presentation/bloc/auth_bloc.dart';

import 'core/exports/exports.dart';
import 'core/utils/dependencies_injection.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppRouter _appRouter = AppRouter(); //authGuard: AuthGuard()
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthBloc(authUser: di())),
      ],
      child: MaterialApp.router(
        title: 'My Family',
        theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: ThemeHelper.grey200,
          appBarTheme: const AppBarTheme(backgroundColor: ThemeHelper.white),
          useMaterial3: true,
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
