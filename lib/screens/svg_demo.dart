import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class SvgDemo extends StatelessWidget {
  const SvgDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/bt.png',
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
