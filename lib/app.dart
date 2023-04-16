import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/router/auth_guard.dart';
import 'package:my_family_flutter/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:my_family_flutter/features/main/presentation/blocs/register_baby/register_baby_bloc.dart';
import 'package:my_family_flutter/features/main/presentation/blocs/register_couple_bloc/register_couple_bloc.dart';
import 'package:my_family_flutter/features/notification/presentation/bloc/notification_bloc.dart';
import 'core/exports/exports.dart';
import 'core/utils/dependencies_injection.dart';
import 'features/documents/presentation/bloc/documents_bloc.dart';
import 'features/profile/presentation/bloc/profile_bloc.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppRouter _appRouter = AppRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => di.get<AuthBloc>(),
        ),
        BlocProvider<DocumentsBloc>(
          create: (_) => di.get<DocumentsBloc>(),
        ),
        BlocProvider<ProfileBloc>(
          create: (_) => di.get<ProfileBloc>(),
        ),
        BlocProvider<RegisterCoupleBloc>(
          create: (_) => di.get<RegisterCoupleBloc>(),
        ),
        BlocProvider<NotificationBloc>(
          create: (_) => di.get<NotificationBloc>(),
        ),
        BlocProvider<RegisterBabyBloc>(
          create: (_) => di.get<RegisterBabyBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'My Family',
        theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: ThemeHelper.grey200,
          primaryColor: ThemeHelper.color08B89D,
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: ThemeHelper.color08B89D,
          ),
          appBarTheme: const AppBarTheme(backgroundColor: ThemeHelper.white),
          useMaterial3: true,
        ),
        routeInformationParser: _appRouter.defaultRouteParser(
          includePrefixMatches: true,
        ),
        routerDelegate: _appRouter.delegate(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
