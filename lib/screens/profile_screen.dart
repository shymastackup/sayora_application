import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(168, 5, 9, 207),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => LearningLevelsScreen()));
          } else if (index == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomeScreen()));
          } else if (index == 2) {
          }
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Row(
                children: [
                  _circleIcon(Icons.arrow_back),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'My Profile',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  _circleIcon(Icons.settings),
                ],
              ),
            ),

            // Profile card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-psd/3d-rendering-hair-style-avatar-design_23-2151869121.jpg?semt=ais_hybrid',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Elizabeth Latte !',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Level-1 - Introduction',
                              style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            'Streak ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 98, 84, 225)),
                          ),
                          Icon(Icons.local_fire_department,
                              color: Colors.orangeAccent, size: 18),
                          Text(
                            '432',
                            style: TextStyle(
                                color: Color.fromARGB(255, 91, 66, 233)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ListView(
                            padding: const EdgeInsets.all(20),
                            children: [
                              const Text(
                                'Personal Information',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                              const SizedBox(height: 20),
                              _buildInfoTile(
                                iconWidget: _circleIcon(Icons.person,
                                    bgColor: Color(0xFF9E6BFC)),
                                label: 'Full Name',
                                value: 'Adeena S A',
                                showEdit: true,
                              ),
                              _buildInfoTile(
                                iconWidget: _circleIcon(Icons.email,
                                    bgColor: Color(0xFF9E6BFC)),
                                label: 'Email Address',
                                value: 'adeena@stackmod.io',
                              ),
                              _buildInfoTile(
                                iconWidget: _circleIcon(Icons.phone,
                                    bgColor: Color(0xFF9E6BFC)),
                                label: 'Contact Number',
                                value: '7034567824',
                                showEdit: true,
                              ),
                              _buildInfoTile(
                                iconWidget: _circleIcon(Icons.star,
                                    bgColor: Color(0xFF9E6BFC)),
                                label: 'Current Level',
                                value: 'Level - 1',
                              ),
                              _buildInfoTile(
                                iconWidget: _circleIcon(Icons.feedback_outlined,
                                    bgColor: Color(0xFF9E6BFC)),
                                label: 'Feedback',
                                value: 'Share your thoughts with us',
                                trailingIcon: Icons.send,
                              ),
                              _buildInfoTile(
                                iconWidget: _circleIcon(Icons.logout,
                                    bgColor: Color(0xFFFA4141)),
                                label: 'Logout',
                                value: 'Click here to logout',
                                iconColor: Color.fromARGB(255, 224, 18, 4),
                              ),
                            ],
                          ),
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
    );
  }

  Widget _buildInfoTile({
    required Widget iconWidget,
    required String label,
    required String value,
    bool showEdit = false,
    IconData? trailingIcon,
    Color iconColor = const Color(0xFF9E6BFC),
    Color valueColor = Colors.black,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        border: Border.all(color: const Color(0xFFE0D6FA)),
      ),
      child: Row(
        children: [
          iconWidget,
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 2),
                Text(value, style: TextStyle(color: valueColor)),
              ],
            ),
          ),
          if (showEdit)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Color(0xFFE0D6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.edit, color: Color(0xFF9E6BFC), size: 18),
            ),
          if (trailingIcon != null)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Color(0xFFE0D6FA),
                shape: BoxShape.circle,
              ),
              child:
                  Icon(trailingIcon, color: const Color(0xFF9E6BFC), size: 18),
            ),
        ],
      ),
    );
  }

  Widget _circleIcon(IconData icon, {Color bgColor = Colors.white}) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
      child: Icon(
        icon,
        size: 18,
        color: bgColor == Colors.white ? const Color(0xFF9E6BFC) : Colors.white,
      ),
    );
  }
}

class LearningLevelsScreen extends StatelessWidget {
  const LearningLevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Levels'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the ProfileScreen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          },
          child: const Text('Go to Profile'),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the ProfileScreen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          },
          child: const Text('Go to Profile'),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    this.selectedIndex = 2,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha((0.3 * 255).toInt()),
              spreadRadius: 2,
              blurRadius: 9,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _circleIcon(Icons.school, 0),
            _circleIcon(Icons.home, 1),
            _circleIcon(Icons.person, 2),
          ],
        ),
      ),
    );
  }

  Widget _circleIcon(IconData icon, int index) {
    final bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF9E6BFC) : Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
