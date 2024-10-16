// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        actions: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/group');
              },
            ),
          ),
        ],
        title: const Text(
          'Group Name',
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(3.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'What\'s on your question?',
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  groupCard(
                    name: 'Theary Gum',
                    duration: " 4:00",
                    post:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, leowto gorh vorn",
                  ),
                  SizedBox(height: 30),
                  groupCard(
                    name: 'Gumblhelloe',
                    duration: " 4:00",
                    post:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, leowto gorh vorn",
                  ),
                  SizedBox(height: 30),
                  groupCard(
                    name: 'Maya',
                    duration: " 4:00",
                    post:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, leowto gorh vorn",
                  ),
                  SizedBox(height: 30),
                  groupCard(
                    name: 'Pharita',
                    duration: " 4:00",
                    post:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, leowto gorh vorn",
                  ),
                  SizedBox(height: 30),
                  groupCard(
                    name: 'Jimmy',
                    duration: " 4:00",
                    post:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, leowto gorh vorn",
                  ),
                  SizedBox(height: 30),
                  groupCard(
                    name: 'Molina',
                    duration: " 4:00",
                    post:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, leowto gorh vorn",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class groupCard extends StatelessWidget {
  const groupCard({
    super.key,
    required this.name,
    required this.duration,
    required this.post,
  });

  final name;
  final duration;
  final post;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 253, 250, 250),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(58.0),
                child: Image.asset(
                  'assets/profile.jpg',
                  width: 70.0,
                  height: 70.0,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    duration,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 58, 58, 58),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              post,
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 58, 58, 58),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.comment),
                SizedBox(width: 10),
                Text(
                  'Comment',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
















// // ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';

// class GroupPage extends StatefulWidget {
//   const GroupPage({super.key});

//   @override
//   State<GroupPage> createState() => _GroupPageState();
// }

// class _GroupPageState extends State<GroupPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 120,
//         title: const Text(
//           'Group Name',
//           style: TextStyle(
//             fontSize: 36,
//             color: Colors.white,
//           ),
//         ),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back_ios_new,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlue,
//       ),
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.grey[100],
//             borderRadius: BorderRadius.circular(3.0),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(15),
//             child: Column(
//               children: [
//                 Container(
//                   // decoration: BoxDecoration(color: Colors.grey[300]),
//                   height: 50,
//                   child: TextField(
//                     decoration: InputDecoration(
//                       labelText: 'What\'s on your question?',
//                       filled: true,
//                       fillColor: Color.fromARGB(255, 255, 255, 255),
//                       // border: OutlineInputBorder(
//                       //   borderRadius: BorderRadius.circular(10.0),
//                       // ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.white, width: 1.0),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.white, width: 1.0),
//                       ),
//                     ),
//                   ),
//                 ),
//                 ///////////////////////
//                 SizedBox(height: 10),
//                 groupCard(
//                   name: 'Theary Gum',
//                   duration: " 4:00",
//                   post:
//                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, leowto gorh vorn",
//                 ),
//                 SizedBox(height: 30),
//                 groupCard(
//                   name: 'Gumble',
//                   duration: " 4:00",
//                   post:
//                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, leowto gorh vorn",
//                 ),
//                 // groupCard(),
//                 // groupCard(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class groupCard extends StatelessWidget {
//   const groupCard({
//     super.key,
//     required this.name,
//     required this.duration,
//     required this.post,
//   });

//   final name;
//   final duration;
//   final post;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 253, 250, 250),
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(58.0),
//                 child: Image.asset(
//                   'assets/profile.jpg',
//                   width: 70.0,
//                   height: 70.0,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               SizedBox(width: 15),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     name,
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   Text(
//                     duration,
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Color.fromARGB(255, 58, 58, 58),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               post,
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Color.fromARGB(255, 58, 58, 58),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Icon(Icons.comment),
//                 SizedBox(width: 10),
//                 Text(
//                   'Comment',
//                   style: TextStyle(fontSize: 18, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//           // Container(
//           //     decoration: BoxDecoration(color: Colors.grey[300]),
//           //     height: 20,
//           //     width: 4000,
//           //   ),
//         ],
//       ),
//     );
//   }
// }
