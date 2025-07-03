// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class IntroScreen extends StatefulWidget {
//   const IntroScreen({super.key});

//   @override
//   State<IntroScreen> createState() => _IntroScreenState();
// }

// class _IntroScreenState extends State<IntroScreen> {
//   final PageController _pageController = PageController();
//   int _currentIndex = 1; 

//   final List<String> images = [
//     'assets/images/intro.png',
//     'assets/images/intro2.png',
//     'assets/images/intro3.png',
//   ];

//   final List<String> titles = [
//     "Welcome to Sayora",
//     "Learn with Purpose,\nSpeak with Confidence",
//     "Smart Lessons That Grow\nWith You.",
//   ];

//   final List<String> descriptions = [
//     "Find your voice with personalized learning paths and practice sessions tailored just for you.",
//     "Speak clearly and naturally with our interactive tools. From pronunciation to conversation practice, we help you sound like a pro — without fear or hesitation.",
//     "From beginner words to advanced grammar, every lesson adapts to your needs. No pressure — just smart, supportive learning at your speed.",
//   ];

//   void _onDotTapped(int index) {
//     _pageController.animateToPage(
//       index,
//       duration: const Duration(milliseconds: 400),
//       curve: Curves.easeInOut,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFB18BFF),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color.fromRGBO(208, 195, 252, 1),
//               Color.fromRGBO(120, 80, 200, 1),
//             ],
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//   children: [
//     const SizedBox(height: 40),
//     Hero(
//       tag: 'logoHero',
//       child: SvgPicture.asset(
//         'assets/images/sayora.svg',
//         width: 50,
//         height: 50,
//       ),
//     ),
//               const SizedBox(height: 20),
//               Expanded(
//                 child: PageView.builder(
//                   controller: _pageController,
//                   itemCount: 3,
//                   onPageChanged: (index) {
//                     setState(() {
//                       _currentIndex = index;
//                     });
//                   },
//                   itemBuilder: (context, index) {
//                     return Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           images[index],
//                           width: 250,
//                           height: 250,
//                         ),
//                         const SizedBox(height: 30),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 24.0),
//                           child: Text(
//                             titles[index],
//                             textAlign: TextAlign.center,
//                             style: GoogleFonts.poppins(
//                               fontSize: 22,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                           child: Text(
//                             descriptions[index],
//                             textAlign: TextAlign.center,
//                             style: GoogleFonts.poppins(
//                               fontSize: 14,
//                               color: Colors.white70,
//                               height: 1.5,
//                             ),
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(height: 20),
              
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: List.generate(3, (index) {
//                   return GestureDetector(
//                     onTap: () => _onDotTapped(index),
//                     child: AnimatedContainer(
//                       duration: const Duration(milliseconds: 300),
//                       margin: const EdgeInsets.symmetric(horizontal: 4),
//                       width: 10,
//                       height: 10,
//                       decoration: BoxDecoration(
//                         color:
//                             _currentIndex == index ? Colors.white : Colors.white38,
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                     ),
//                   );
//                 }),
//               ),
//               const SizedBox(height: 40),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }