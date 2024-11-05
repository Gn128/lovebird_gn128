// import 'package:flutter/material.dart';

// import 'package:lovebird_gn128/chat/mainChat.dart';
// import 'package:lovebird_gn128/edit%20profile%20screens/edit_low_profile_screen.dart';
// import 'package:lovebird_gn128/homeScreen/homeScreen2.dart';
// import 'package:lovebird_gn128/homeScreen/notification.dart';
// import 'package:lovebird_gn128/matches/likes.dart';
// import 'package:lovebird_gn128/matches/peopleNearby.dart';
// import 'package:lovebird_gn128/setting_screen/setting_screen.dart';
// import 'package:lovebird_gn128/safety_privacy_screens/safety_screen.dart';
// import 'package:lovebird_gn128/subscription%20plan/standard_plan.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       // appBar: AppBar(
//       //   leading: Row(
//       //     children: [
//       //       IconButton(
//       //         icon: const Icon(Icons.arrow_back, color: Colors.black, size: 10),
//       //         onPressed: () {
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //       GestureDetector(
//       //         onTap: () {
//       //           showLibbyChatbot(context); // Call the popup function
//       //         },
//       //         child: Image.asset('assets/images/robot.png', width: 0),
//       //       ),
//       //     ],
//       //   ),
//       //   title: const Text(
//       //     'Profile',
//       //     style: TextStyle(
//       //       fontWeight: FontWeight.bold,
//       //       fontSize: 20,
//       //     ),
//       //   ),
//       //   centerTitle: true,
//       //   actions: [
//       //     Padding(
//       //       padding: EdgeInsets.only(top: 5),
//       //       child: IconButton(
//       //         icon: Image.asset('assets/images/icons/verblue.png',
//       //             width: 30, height: 30),
//       //         onPressed: () {
//       //           verify(context);
//       //         },
//       //       ),
//       //     ),
//       //     const SizedBox(width: 4),
//       //     IconButton(
//       //       icon: Image.asset('assets/images/message.png', width: 30),
//       //       onPressed: () {
//       //         showExtraViewsPopup(context); // Show extra views popup
//       //       },
//       //     ),
//       //     IconButton(
//       //       icon: const Icon(Icons.more_vert, color: Colors.black, size: 30),
//       //       onPressed: () {
//       //         _showPopup(context);
//       //       },
//       //     ),
//       //   ],
//       // ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 vertical: screenHeight * 0.01,
//               ), // Responsive vertical padding
//               // horizontal: screenWidth * 0.001),
//               child: Row(
//                 children: [
//                   IconButton(
//                     icon: const Icon(Icons.arrow_back,
//                         color: Colors.black, size: 40),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       showLibbyChatbot(
//                           context); // Call the separate function to show the popup
//                     },
//                     child: Image.asset('assets/images/robot.png', width: 40),
//                   ),
//                   const Expanded(
//                     child: Center(
//                         child: Text(
//                       'Profile',
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//                       textAlign: TextAlign.center,
//                     )),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 5),
//                     child: IconButton(
//                       icon: Image.asset('assets/images/icons/verblue.png',
//                           width: 30, height: 30),
//                       onPressed: () {
//                         verify(context);
//                       },
//                     ),
//                   ),
//                   const SizedBox(width: 4),
//                   IconButton(
//                     icon: Image.asset('assets/images/message.png', width: 30),
//                     onPressed: () {
//                       showExtraViewsPopup(context); // Show extra views popup
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.more_vert,
//                         color: Colors.black, size: 30),
//                     onPressed: () {
//                       _showPopup(context);
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             Stack(
//               alignment: Alignment
//                   .bottomRight, // Aligns child widgets to the bottom right
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(12.0),
//                   child: Image.asset(
//                     'assets/images/homeImage.png', // Path to the main image
//                     width: screenWidth * 0.9,
//                     height: screenHeight * 0.5,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 20.0),
//             // Wrap the following content in a SingleChildScrollView
//             const Expanded(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Daniel, 31',
//                             style: TextStyle(
//                                 fontSize: 22, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             'Bio',
//                             style: TextStyle(
//                                 fontSize: 22, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),

//                       SizedBox(height: 16.0),
//                       Row(children: [
//                         ProfileDetail(
//                           icon: Icons.man,
//                           title: "Man",
//                         ),
//                         Spacer(),
//                         Text('Fun and Interesting',
//                             style: TextStyle(fontSize: 16))
//                       ]),

//                       ProfileDetail(
//                         icon: Icons.rule_sharp,
//                         title: "145cm 65kg",
//                       ),
//                       ProfileDetail(
//                         icon: Icons.work,
//                         title: "Banker at Citi Bank",
//                       ),
//                       ProfileDetail(
//                         icon: Icons.school,
//                         title: "University of Leeds, UK",
//                       ),
//                       ProfileDetail(
//                         icon: Icons.home,
//                         title: "Lives in New London",
//                       ),
//                       ProfileDetail(
//                         icon: Icons.location_on,
//                         title: "25km away",
//                       ),
//                       SizedBox(height: 20.0),
//                       // Relationship basics
//                       Text(
//                         'My relationship Basics',
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 10),
//                       RelationshipOption(
//                         title: 'Friendship',
//                         icon: Icons.people,
//                         color: Colors.pinkAccent,
//                       ),
//                       SizedBox(height: 20),
//                       // Interests
//                       Text(
//                         'Interests',
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 10),
//                       Wrap(
//                         spacing: 10,
//                         children: [
//                           InterestOption(
//                             title: 'Cooking',
//                             icon: Icons.restaurant_menu,
//                             color: Colors.orange,
//                           ),
//                           InterestOption(
//                             title: 'Hiking',
//                             icon: Icons.hiking,
//                             color: Colors.green,
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         'Location',
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         'London,Uk',
//                         style: TextStyle(
//                           fontSize: 14,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
     