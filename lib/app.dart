import 'package:flutter/material.dart';
import 'package:my_family_flutter/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Family',
      home: HomeScreen(),
    );
  }
}
