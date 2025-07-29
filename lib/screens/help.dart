// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:gap/gap.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sayora/screens/home_screen.dart';
// import 'package:sayora/screens/level_screen.dart.dart';

// class ProfileScreen extends StatefulWidget {

//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   int selectedIndex = 2;

//   void _onNavTap(int index) {
//     if (index == selectedIndex) return;
//     setState(() => selectedIndex = index);

//     switch (index) {
//       case 0:
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const LevelScreen()),
//         );
//         break;
//       case 1:
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const HomeScreen()),
//         );
//         break;
//       case 2:
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const ProfileScreen()),
//         );
//         break;
//     }
//   }

//   Widget _buildNavItem(String assetPath, int index) {
//     bool isSelected = selectedIndex == index;

//     return GestureDetector(
//       onTap: () => _onNavTap(index),
//       child: Container(
//         padding: const EdgeInsets.all(6),
//         decoration: BoxDecoration(
//           gradient: isSelected
//               ? const LinearGradient(
//                   colors: [
//                     Color.fromRGBO(34, 3, 136, 1),
//                     Color.fromRGBO(208, 195, 252, 1),
//                   ],
//                 )
//               : null,
//           color: isSelected ? null : Colors.transparent,
//           shape: BoxShape.circle,
//         ),
//         child: SvgPicture.asset(
//           assetPath,
//           width: 20,
//           height: 35,
//           color: isSelected
//               ? Colors.white
//               : const Color.fromARGB(153, 100, 86, 194),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFF4B22B4), Color(0xFF8E65F3)],
//           ),
//         ),
//         child: Column(
//           children: [
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 15.0,
//                     vertical: 40,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       _circleIcon(
//                         Icons.arrow_back,
//                         onTap: () {
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const HomeScreen()),
//                           );
//                         },
//                       ),
//                       const SizedBox(width: 12),
//                       const Expanded(
//                         child: Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(
//                             'My Profile',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 12),
//                       // _circleIcon(Icons.settings),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                   child: Container(
//                     padding: const EdgeInsets.all(10),
//                     child: Row(
//                       children: [
//                         const CircleAvatar(
//                           radius: 25,
//                           backgroundImage: NetworkImage(
//                             'https://img.freepik.com/free-psd/3d-rendering-hair-style-avatar-design_23-2151869121.jpg?semt=ais_hybrid',
//                           ),
//                         ),
//                         const SizedBox(width: 14),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 'Elizabeth Latte !',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               Text(
//                                 'Level-1 - Introduction',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 10,
//                             vertical: 4,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Row(
//                             children: [
//                               Text(
//                                 'streak',
//                                 style: GoogleFonts.lato(
//                                   color: Color.fromARGB(255, 98, 84, 225),
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 4),
//                                 child: SvgPicture.asset(
//                                   'assets/icons/flash.svg',
//                                   height: 18,
//                                   width: 18,
//                                   colorFilter: const ColorFilter.mode(
//                                     Color.fromRGBO(142, 85, 221, 1),
//                                     BlendMode.srcIn,
//                                   ),
//                                 ),
//                               ),
//                               Text(
//                                 '432',
//                                 style: TextStyle(
//                                   color: Color.fromARGB(255, 91, 66, 233),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const Gap(12),
//               ],
//             ),
//             Expanded(
//               child: Container(
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(40),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         width: double.infinity,
//                         decoration: const BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(40),
//                             topRight: Radius.circular(40),
//                           ),
//                         ),
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: SingleChildScrollView(
//                                 padding: const EdgeInsets.all(20),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [//                                     const Text(
//                                       'Personal Information',
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.normal,
//                                       ),
//                                     ),
//                                     // const SizedBox(height: 20),
//                                   ],
//                                 ),
//                               ),
//                     ),
//                             ),
//                             Container(
//                               padding: const EdgeInsets.all(20),
//                               // decoration: BoxDecoration(
//                               // color: Colors.white,
//                               // borderRadius: BorderRadius.circular(16),
//                               // boxShadow: [
//                               //   // BoxShadow(
//                               //   //   color: Colors.grey.withOpacity(0.1),
//                               //   //   spreadRadius: 2,
//                               //   //   blurRadius: 10,
//                               //   //   offset: const Offset(0, 4),
//                               //   // ),
//                               // ],
//                               // ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   _buildInfoTile(
//                                     iconWidget: _circleIcon(
//                                       SvgPicture.asset(
//                                         'assets/icons/person.svg',
//                                         height: 25,
//                                         width: 25,
//                                         colorFilter: const ColorFilter.mode(
//                                           Colors.white,
//                                           BlendMode.srcIn,
//                                         ),
//                                       ),
//                                     ),
//                                     label: 'Full Name',
//                                     value: 'Adeena S A',
//                                     showEdit: true,
//                                   ),
//                                   const Gap(10),
//                                   _buildInfoTile(
//                                     iconWidget: _circleIcon(
//                                       SvgPicture.asset(
//                                         'assets/icons/sms.svg',
//                                         height: 25,
//                                         width: 25,
//                                         colorFilter: const ColorFilter.mode(
//                                           Colors.white,
//                                           BlendMode.srcIn,
//                                         ),
//                                       ),
//                                     ),
//                                     label: 'Email Address',
//                                     value: 'adeena@stackmod.io',
//                                   ),
//                                   const Gap(10),
//                                   _buildInfoTile(
//                                     iconWidget: _circleIcon(
//                                       SvgPicture.asset(
//                                         'assets/icons/call.svg',
//                                         height: 25,
//                                         width: 25,
//                                         colorFilter: const ColorFilter.mode(
//                                           Colors.white,
//                                           BlendMode.srcIn,
//                                         ),
//                                       ),
//                                     ),
//                                     label: 'Contact Number',
//                                     value: '7034567824',
//                                     showEdit: true,
//                                   ),
//                                   const Gap(10),
//                                   _buildInfoTile(
//                                     iconWidget: _circleIcon(
//                                       SvgPicture.asset(
//                                         'assets/icons/star.svg',
//                                         height: 25,
//                                         width: 25,
//                                         colorFilter: const ColorFilter.mode(
//                                           Colors.white,
//                                           BlendMode.srcIn,
//                                         ),
//                                       ),
//                                     ),
//                                     label: 'Current Level',
//                                     value: 'Level - 1',
//                                   ),
//                                   const Gap(10),
//                                   _buildInfoTile(
//                                     iconWidget: _circleIcon(
//                                       SvgPicture.asset(
//                                         'assets/icons/star.svg',
//                                         height: 25,
//                                         width: 25,
//                                         colorFilter: const ColorFilter.mode(
//                                           Colors.white,
//                                           BlendMode.srcIn,
//                                         ),
//                                       ),
//                                     ),
//                                     label: 'Feedback',
//                                     value: 'Share your thoughts with us',
//                                     trailingIcon: Icons.send,
//                                   ),
//                                   const Gap(10),
//                                   _buildInfoTile(
//                                     iconWidget: _circleIcon(
//                                       SvgPicture.asset(
//                                         'assets/icons/login.svg',
//                                         height: 25,
//                                         width: 25,
//                                         colorFilter: const ColorFilter.mode(
//                                           Colors.white,
//                                           BlendMode.srcIn,
//                                         ),
//                                       ),
//                                       bgColor: const Color(0xFFFA4141),
//                                     ),
//                                     label: 'Logout',
//                                     value: 'Click here to logout',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 bottom: 80,
//                                 left: 55,
//                                 right: 55,
//                                 top: 10,
//                               ),
//                               child: Container(
//                                 height: 60,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(50),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.black12.withOpacity(0.08),
//                                       blurRadius: 8,
//                                       offset: const Offset(0, 3),
//                                     ),
//                                   ],
//                                 ),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceAround,
//                                   children: [
//                                     _buildNavItem('assets/icons/star.svg', 0),
//                                     _buildNavItem('assets/icons/home.svg', 1),
//                                     _buildNavItem('assets/icons/person.svg', 2),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
            
//     ),
          
        
      
    
        
      
    
//   }

//   Widget _buildInfoTile({
//     required Widget iconWidget,
//     required String label,
//     required String value,
//     bool showEdit = false,
//     IconData? trailingIcon,
//     // Color iconColor = const Color.fromARGB(255, 14, 232, 25),
//     Color valueColor = Colors.grey,
//   }) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 8),
//       padding: const EdgeInsets.only(bottom: 5, left: 4, right: 4, top: 4),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(45),
//         border: Border.all(color: const Color(0xFFE0D6FA)),
//       ),
//       child: Row(
//         children: [
//           iconWidget,
//           const SizedBox(width: 8),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: const TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 const SizedBox(height: 3),
//                 Text(value, style: TextStyle(color: valueColor)),
//               ],
//             ),
//           ),
//           if (showEdit)
//             Container(
//               padding: const EdgeInsets.all(6),
//               decoration: const BoxDecoration(
//                 color: Color(0xFFF3F0FE),
//                 shape: BoxShape.circle,
//               ),
//               child: const Icon(Icons.edit, color: Color(0xFF9E6BFC), size: 20),
//             ),
//           if (trailingIcon != null)
//             Container(
//               padding: const EdgeInsets.all(6),
//               decoration: const BoxDecoration(
//                 color: Color(0xFFF3F0FE),
//                 shape: BoxShape.circle,
//               ),
//               child: Icon(
//                 trailingIcon,
//                 color: const Color(0xFF9E6BFC),
//                 size: 20,
//               ),
//             ),
//         ],
//       ),
//     );
//   }

//   Widget _circleIcon(
//     Widget icon, {
//     Color? bgColor,
//     Gradient? gradient,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: bgColor,
//         gradient: bgColor == null
//             ? (gradient ??
//                 const LinearGradient(
//                   colors: [
//                     Color.fromRGBO(34, 3, 136, 1),
//                     Color.fromRGBO(208, 195, 252, 1),
//                   ],
//                 ))
//             : null,
//       ),
//       child: icon,
//     );
//   }
// }
