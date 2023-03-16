import 'package:flutter/material.dart';
import 'package:my_family_flutter/app.dart';
import 'package:my_family_flutter/core/utils/dependencies_injection.dart' as di;
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  di.di<SharedPreferences>().clear();
  runApp(App());
}
