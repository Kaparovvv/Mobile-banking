import 'package:auto_route/auto_route.dart';
import 'package:my_family_flutter/core/router/auth_guard.dart';
import 'package:my_family_flutter/feature/documents/presentation/screens/document_details_screen.dart';
import 'package:my_family_flutter/feature/documents/presentation/screens/documents_screen.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/main_screen.dart';
import 'package:my_family_flutter/feature/auth/presentation/screens/auth_screen.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/marriage_registration.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/public_services_screen.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/registration_child_birth.dart';
import 'package:my_family_flutter/feature/main/presentation/screens/services_for_my_family.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'loginScreen', page: AuthScreen),
    AutoRoute(
      path: 'mainScreen',
      page: MainScreen,
      initial: true,
      guards: [AuthGuard],
    ),
    AutoRoute(path: 'publicServices', page: PublicServicesScreen),
    AutoRoute(path: 'servicesForMyFamily', page: ServicesForMyFamilyScreen),
    AutoRoute(path: 'regisChild', page: RegistrationChildBirthScreen),
    AutoRoute(path: 'marriageRegis', page: MarriageRegistrationScreen),
    AutoRoute(path: 'documents', page: DocumentsScreen),
    AutoRoute(path: 'documentDetails', page: DocumentDetailsScreen),
  ],
)
class $AppRouter {}
