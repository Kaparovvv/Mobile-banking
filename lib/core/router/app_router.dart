import 'package:auto_route/auto_route.dart';
import 'package:my_family_flutter/core/router/auth_guard.dart';
import 'package:my_family_flutter/core/router/nav_bar_router.dart';
import 'package:my_family_flutter/features/documents/presentation/screens/certificate_details_screen.dart';
import 'package:my_family_flutter/features/documents/presentation/screens/document_details_screen.dart';
import 'package:my_family_flutter/features/documents/presentation/screens/documents_screen.dart';
import 'package:my_family_flutter/features/history/presentation/screens/history_screen.dart';
import 'package:my_family_flutter/features/main/presentation/screens/child_info.dart';
import 'package:my_family_flutter/features/main/presentation/screens/main_screen.dart';
import 'package:my_family_flutter/features/auth/presentation/screens/auth_screen.dart';
import 'package:my_family_flutter/features/main/presentation/screens/marriage_registration.dart';
import 'package:my_family_flutter/features/main/presentation/screens/public_services_screen.dart';
import 'package:my_family_flutter/features/main/presentation/screens/registration_child_birth.dart';
import 'package:my_family_flutter/features/main/presentation/screens/services_for_my_family.dart';
import 'package:my_family_flutter/features/notification/presentation/pages/notification_screen.dart';
import 'package:my_family_flutter/features/profile/presentation/screens/profile_screen.dart';
import '../../features/notification/presentation/pages/notification_list_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/loginScreen', page: AuthScreen),
    AutoRoute(
      path: '/',
      page: NavBarRouter,
      initial: true,
      guards: [AuthGuard],
      children: [
        AutoRoute(path: 'mainScreen', page: MainScreen, children: []),
        AutoRoute(path: 'history', page: HistoryScreen),
      ],
    ),
    AutoRoute(path: '/profile', page: ProfileScreen),
    AutoRoute(path: '/publicServices', page: PublicServicesScreen),
    AutoRoute(path: '/servicesForMyFamily', page: ServicesForMyFamilyScreen),
    AutoRoute(path: '/regisChild', page: RegistrationChildBirthScreen),
    AutoRoute(path: '/marriageRegis', page: MarriageRegistrationScreen),
    AutoRoute(path: '/documents', page: DocumentsScreen),
    AutoRoute(path: '/documentDetails', page: DocumentDetailsScreen),
    AutoRoute(path: '/certificateDetails', page: CertificateDetailsScreen),
    AutoRoute(path: '/notification', page: NotificationScreen),
    AutoRoute(path: '/notificationList', page: NotificationListScreen),
    AutoRoute(path: '/childInfo', page: ChildInfoScreen),
  ],
)
class $AppRouter {}
