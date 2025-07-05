// import 'package:flutter/material.dart';

// class LearningLevelsScreen extends StatelessWidget {
//   const LearningLevelsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF2A0E86),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Top Profile + Streak
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 children: [
//                   const CircleAvatar(
//                     radius: 24,
//                     backgroundImage: AssetImage(
//                         'assets/avatar.png'), // Replace with your image
//                   ),
//                   const Spacer(),
//                   Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.white.withOpacity(0.1),
//                       border: Border.all(color: Colors.white, width: 1),
//                     ),
//                     child: Row(
//                       children: const [
//                         Icon(Icons.local_fire_department,
//                             color: Colors.orangeAccent, size: 20),
//                         SizedBox(width: 4),
//                         Text(
//                           'Streak 432',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   const Icon(Icons.notifications, color: Colors.white),
//                 ],
//               ),
//             ),

//             // Main Card Container
//             Expanded(
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(24),
//                       topRight: Radius.circular(24)),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Header
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: const [
//                           Text(
//                             'Learning Levels',
//                             style: TextStyle(
//                                 fontSize: 18, fontWeight: FontWeight.bold),
//                           ),
//                           Text('⭐ 0 out of 100 Completed'),
//                         ],
//                       ),
//                       const SizedBox(height: 16),

//                       // Level 1 Card
//                       Container(
//                         padding: const EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           color: const Color(0xFFF3ECFE),
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               'Level 1 - Introduction',
//                               style: TextStyle(
//                                   fontSize: 16, fontWeight: FontWeight.bold),
//                             ),
//                             const SizedBox(height: 8),
//                             const Text(
//                                 "Let the journey begin! Earn XP, beat challenges, and level up fast."),
//                             const SizedBox(height: 12),
//                             Row(
//                               children: [
//                                 const Text("75% of 100 xp"),
//                                 const SizedBox(width: 12),
//                                 Expanded(
//                                   child: LinearProgressIndicator(
//                                     value: 0.75,
//                                     backgroundColor: Colors.grey[300],
//                                     color: Colors.deepPurple,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 16),

//                       // Locked Levels
//                       _buildLockedLevel("Level-2"),
//                       const SizedBox(height: 12),
//                       _buildLockedLevel("Level-2"),
//                       const SizedBox(height: 12),
//                       _buildLockedLevel("Level-2"),

//                       const Spacer(),

//                       // Bottom Nav
//                       Container(
//                         height: 60,
//                         margin: const EdgeInsets.symmetric(horizontal: 40),
//                         decoration: BoxDecoration(
//                           color: const Color(0xFFF1EDF8),
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: const [
//                             Icon(Icons.school, color: Colors.deepPurple),
//                             Icon(Icons.home, color: Colors.grey),
//                             Icon(Icons.person_outline, color: Colors.grey),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildLockedLevel(String levelText) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: const Color(0xFFB6A1E1),
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         children: [
//           const Icon(Icons.lock_outline, size: 32, color: Colors.white),
//           const SizedBox(height: 8),
//           Text(
//             'Complete Previous Level to unlock $levelText',
//             style: const TextStyle(color: Colors.white),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }
