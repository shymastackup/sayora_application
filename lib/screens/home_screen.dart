import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF220388), Color(0xFFD0C3FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),

            // Top Row (Avatar, Streak, Notification)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIhW5xIeDMiXDdpsiJYbOZLhQi8r1a7extjw&s',
                    ),
                    radius: 25,
                  ),
                  const Spacer(),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.local_fire_department,
                            color: Colors.orangeAccent),
                        SizedBox(width: 4),
                        Text(
                          'Streak',
                          style: TextStyle(
                              color: Color.fromARGB(255, 145, 144, 224)),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '432',
                          style: TextStyle(
                            color: Color.fromARGB(255, 50, 46, 46),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF1EDFF),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SvgPicture.asset(
                        'assets/icons/notification.svg',
                        color: Color.fromARGB(255, 106, 66, 225),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Welcome messages
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hey Elizabeth Latte !',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome back! Ready to learn today?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Main White Card with Shadow
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.deepPurple.shade100.withOpacity(0.5),
                      blurRadius: 15,
                      spreadRadius: 2,
                      offset: const Offset(3, -10),
                    ),
                    BoxShadow(
                      color: const Color.fromARGB(255, 231, 232, 237)
                          .withOpacity(0.4),
                      blurRadius: 20,
                      spreadRadius: 4,
                      offset: const Offset(0, -10),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Rank and XP Cards
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          infoCard('432 Rank', '45th position', Icons.star),
                          infoCard('2345 Xp', 'Top among 456!', Icons.bolt),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Power Up Text
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Let's power up your XP! ⭐",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Today's Quest Card
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    "Today's Quest\nLevel 1 - Introduction",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 24,
                                  child: Text(
                                    'Level-1',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Complete it to earn XP and unlock rewards!',
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 14),
                                ),
                                child: const Text(
                                  'Get Started on Level - 1',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Level Card
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text('1'),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Level 1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'Let the journey begin! Earn XP, beat challenges, and level up fast.',
                                  ),
                                ],
                              ),
                            ),
                            const Column(
                              children: [
                                Text('Previous'),
                                Text('Next',
                                    style: TextStyle(color: Colors.blue)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.deepPurple,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        ],
      ),
    );
  }

  // Info Card Widget
  Widget infoCard(String title, String subtitle, IconData icon) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.deepPurple),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(subtitle, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
