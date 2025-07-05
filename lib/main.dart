import 'package:flutter/material.dart';
// import 'package:sayora/screens/home_screen.dart';
// import 'package:sayora/screens/learning_levels_screen.dart';
import 'package:sayora/screens/profile_screen.dart';
// import 'package:sayora/screens/onboarding_screen.dart';
// import 'screens/splash_screen.dart';

void main() {
  runApp(const SayoraApp());
}

class SayoraApp extends StatelessWidget {
  const SayoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(),
    );
  }
}
