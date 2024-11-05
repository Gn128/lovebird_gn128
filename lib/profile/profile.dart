import 'package:flutter/material.dart';

import 'package:lovebird_gn128/edit%20profile%20screens/edit_low_profile_screen.dart';
import 'package:lovebird_gn128/homeScreen/homeScreen2.dart';
import 'package:lovebird_gn128/homeScreen/notification.dart';
import 'package:lovebird_gn128/matches/likes.dart';
import 'package:lovebird_gn128/matches/peopleNearby.dart';
import 'package:lovebird_gn128/setting_screen/setting_screen.dart';
import 'package:lovebird_gn128/safety_privacy_screens/safety_screen.dart';
import 'package:lovebird_gn128/subscription%20plan/standard_plan.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   leading: Row(
      //     children: [
      //       IconButton(
      //         icon: const Icon(Icons.arrow_back, color: Colors.black, size: 10),
      //         onPressed: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           showLibbyChatbot(context); // Call the popup function
      //         },
      //         child: Image.asset('assets/images/robot.png', width: 0),
      //       ),
      //     ],
      //   ),
      //   title: const Text(
      //     'Profile',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 20,
      //     ),
      //   ),
      //   centerTitle: true,
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.only(top: 5),
      //       child: IconButton(
      //         icon: Image.asset('assets/images/icons/verblue.png',
      //             width: 30, height: 30),
      //         onPressed: () {
      //           verify(context);
      //         },
      //       ),
      //     ),
      //     const SizedBox(width: 4),
      //     IconButton(
      //       icon: Image.asset('assets/images/message.png', width: 30),
      //       onPressed: () {
      //         showExtraViewsPopup(context); // Show extra views popup
      //       },
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.more_vert, color: Colors.black, size: 30),
      //       onPressed: () {
      //         _showPopup(context);
      //       },
      //     ),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.01,
              ), // Responsive vertical padding
              // horizontal: screenWidth * 0.001),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.black, size: 40),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      showLibbyChatbot(
                          context); // Call the separate function to show the popup
                    },
                    child: Image.asset('assets/images/robot.png', width: 40),
                  ),
                  const Expanded(
                    child: Center(
                        child: Text(
                      'Profile',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: IconButton(
                      icon: Image.asset('assets/images/icons/verblue.png',
                          width: 30, height: 30),
                      onPressed: () {
                        verify(context);
                      },
                    ),
                  ),
                  const SizedBox(width: 4),
                  IconButton(
                    icon: Image.asset('assets/images/message.png', width: 30),
                    onPressed: () {
                      showExtraViewsPopup(context); // Show extra views popup
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert,
                        color: Colors.black, size: 30),
                    onPressed: () {
                      _showPopup(context);
                    },
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: screenHeight * 0.5,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          'assets/images/homeImage.png',
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          'assets/images/homeImage.png',
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          'assets/images/homeImage.png',
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: _currentPage == index
                              ? Color.fromRGBO(54, 40, 221, 1)
                              : Color.fromRGBO(255, 255, 255, 0.54),
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20.0),
            // Wrap the following content in a SingleChildScrollView
            const Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Daniel, 31',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Bio',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      SizedBox(height: 16.0),
                      Row(children: [
                        ProfileDetail(
                          icon: Icons.man,
                          title: "Man",
                        ),
                        Spacer(),
                        Text('Fun and Interesting',
                            style: TextStyle(fontSize: 16))
                      ]),

                      ProfileDetail(
                        icon: Icons.rule_sharp,
                        title: "145cm 65kg",
                      ),
                      ProfileDetail(
                        icon: Icons.work,
                        title: "Banker at Citi Bank",
                      ),
                      ProfileDetail(
                        icon: Icons.school,
                        title: "University of Leeds, UK",
                      ),
                      ProfileDetail(
                        icon: Icons.home,
                        title: "Lives in New London",
                      ),
                      ProfileDetail(
                        icon: Icons.location_on,
                        title: "25km away",
                      ),
                      SizedBox(height: 20.0),
                      // Relationship basics
                      Text(
                        'My relationship Basics',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      RelationshipOption(
                        title: 'Friendship',
                        icon: Icons.people,
                        color: Colors.pinkAccent,
                      ),
                      SizedBox(height: 20),
                      // Interests
                      Text(
                        'Interests',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Wrap(
                        spacing: 10,
                        children: [
                          InterestOption(
                            title: 'Cooking',
                            icon: Icons.restaurant_menu,
                            color: Colors.orange,
                          ),
                          InterestOption(
                            title: 'Hiking',
                            icon: Icons.hiking,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Location',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'London,Uk',
                        style: TextStyle(
                          fontSize: 14,
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
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(left: 12.0, right: 12, top: 12, bottom: 22),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF3628DD).withOpacity(0.19),
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor:
                  Colors.transparent, // Transparent to show container color
              elevation: 0,
              // Ensure all items are shown
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icons/homeBlack.png',
                      width: 30, height: 30),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icons/localcon.png',
                      width: 30, height: 30),
                  label: 'People Nearby',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icons/chatIcon.png',
                      width: 30, height: 30),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icons/matches.png',
                      width: 30, height: 30),
                  label: 'Matches',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icons/blueProfile.png',
                      width: 30, height: 30),
                  label: 'Profile',
                ),
              ],
              selectedLabelStyle: const TextStyle(
                  fontSize: 11), // Change the font size for the selected label
              unselectedLabelStyle: const TextStyle(fontSize: 11),
              onTap: (index) {
                // Handle navigation based on the index
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DatingProfilePage()),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PeopleNearbyPage()),
                    );

                    break;
                  case 2:
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Likes()),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()),
                    );
                    break;
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  final IconData icon;
  final String title;

  const ProfileDetail({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class RelationshipOption extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const RelationshipOption({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          Icon(icon, color: color),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

class InterestOption extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const InterestOption({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          Icon(icon, color: color),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

void _showPopup(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true, // Dismiss when tapped outside
    barrierLabel: 'Dismiss',
    // Add a background overlay
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, animation1, animation2) {
      return Align(
        alignment: Alignment.topRight, // Align the dialog to the right
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 20),
            child: Container(
              width: 200, // Set the width of your popup
              height: 335, // Set the height of your popup
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      showSharePopup(context);
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.share),
                        SizedBox(width: 5),
                        Text('Share your profile',
                            style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15), // Space between items
                  InkWell(
                    onTap: () {
                      showBlockPopup(context);
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.block),
                        SizedBox(width: 5),
                        Text('Block', style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15), // Space between items
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReportPage()),
                      );
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.report),
                        SizedBox(width: 5),
                        Text('Report', style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15), // Space between items
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DatingPicture()),
                      );
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.tips_and_updates),
                        SizedBox(width: 5),
                        Text('Dating Tips', style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15), // Space between items
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditLowProfileScreen()),
                      );
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.edit),
                        SizedBox(width: 5),
                        Text('Edit profile', style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15), // Space between items
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoveBirdPlanPage()),
                      );
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.money),
                        SizedBox(width: 5),
                        Text('Plans', style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15), // Space between items
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SafetyScreen()),
                      );
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.safety_check),
                        SizedBox(width: 5),
                        Text('Safety', style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15), // Space between items
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsScreen()),
                      );
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.settings),
                        SizedBox(width: 5),
                        Text('Settings', style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, animation1, animation2, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0), // Slide in from the right
          end: const Offset(0, 0),
        ).animate(animation1),
        child: child,
      );
    },
  );
}
