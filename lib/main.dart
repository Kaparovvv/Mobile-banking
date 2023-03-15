import 'package:flutter/material.dart';
import 'package:my_family_flutter/app.dart';
import 'package:my_family_flutter/core/utils/dependencies_injection.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(App());
}
