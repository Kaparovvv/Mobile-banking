import 'package:auto_route/auto_route.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/main_screen.dart';
import 'package:my_family_flutter/feature/auth/presentation/screens/login_screen.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/marriage_registration.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/public_services_screen.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/registration_child_birth.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/services_for_my_family.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'loginScreen', page: LoginScreen, initial: true),
    AutoRoute(path: 'mainScreen', page: MainScreen, initial: false),
    AutoRoute(path: 'publicServices', page: PublicServicesScreen),
    AutoRoute(path: 'servicesForMyFamily', page: ServicesForMyFamilyScreen),
    AutoRoute(path: 'regisChild', page: RegistrationChildBirthScreen),
    AutoRoute(path: 'marriageRegis', page: MarriageRegistrationScreen),
  ],
)
class $AppRouter {}
