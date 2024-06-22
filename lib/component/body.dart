// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:svg_icon/svg_icon.dart';
// import 'package:flutter/material.dart';

// class Body extends StatelessWidget {
//   const Body({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 115,
//           width: 118,
//           child: Stack(
//             fit: StackFit.expand,
//             children: [
//               CircleAvatar(
//                 backgroundImage: AssetImage('lib/images/profile.jpg'),
//               ),
//               Positioned(
//                 /// positon of camara
//                 bottom: 0,
//                 left: 78,
//                 child: SizedBox(
//                   height: 50,
//                   width: 50,
//                   child: TextButton(
//                     style: TextButton.styleFrom(
//                       // foregroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(),
//                       // iconColor: Color.fromARGB(255, 61, 69, 94),
//                     ),
//                     onPressed: () {},
//                     child: SizedBox(
//                       height: 28,
//                       width: 28,
//                       child: CircleAvatar(
//                         backgroundImage: AssetImage(
//                           "lib/images/camara.jpg",
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
