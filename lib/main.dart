import 'package:flutter/material.dart';
import 'package:sayora/screens/chat_screen.dart';
import 'package:sayora/screens/home_screen.dart';
import 'package:sayora/screens/intro_screen.dart';
import 'package:sayora/screens/level_screen.dart.dart';
import 'package:sayora/screens/login_screen.dart';
import 'package:sayora/screens/profile_screen.dart';

import 'package:sayora/screens/splash_screen.dart';



void main() {
  runApp(const SayoraApp());
}

class SayoraApp extends StatelessWidget {
  const SayoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
       routes: {
      '/login': (context) => const LoginScreen(),
      '/home': (context) => const HomeScreen(),
      '/chat': (context) => const ChatScreen(),
      '/splash': (context) => const SplashScreen(),
      '/level': (context) => const LevelScreen(), 
      '/onboarding': (context) => const IntroScreen(),
      '/profile': (context) => const ProfileScreen(),
    
    
    },
    );
  }
}