import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'onboarding_screen.dart'; 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
  with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _topColorAnimation;
  late Animation<Color?> _bottomColorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    _topColorAnimation = ColorTween(
      begin: const Color.fromRGBO(34, 3, 136, 1),
      end: const Color.fromRGBO(120, 80, 200, 1),
    ).animate(_controller);

    _bottomColorAnimation = ColorTween(
      begin: const Color.fromRGBO(208, 195, 252, 1),
      end: const Color.fromRGBO(34, 3, 136, 1),
    ).animate(_controller);

    
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const IntroScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  _topColorAnimation.value!,
                  _bottomColorAnimation.value!,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logoHero',
                  child: SvgPicture.asset(
                    'assets/images/sayora.svg',
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}