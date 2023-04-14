import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/app.dart';
import 'package:my_family_flutter/bloc_observer.dart';
import 'package:my_family_flutter/core/utils/dependencies_injection.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  Bloc.observer = GlobalBlocObserver();
  runApp(App());
}
