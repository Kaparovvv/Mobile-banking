import 'package:auto_route/auto_route.dart';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/core/utils/dependencies_injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    var token =
        di.get<SharedPreferences>().getString(CachedNames.cacheUserToken);
    if (token != null) {
      resolver.next(true);
    } else {
      router.push(
        AuthScreenRoute(
          onLoginResult: (success) {
            resolver.next(success);
          },
        ),
      );
    }
  }
}
