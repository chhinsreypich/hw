// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';
import 'package:western/pages/edit_profile.dart';
import 'package:western/widgets/forwardButton.dart';
import 'package:western/widgets/settingItem.dart';
import 'package:western/widgets/setting_switch.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Ionicons.chevron_back_outline),
        ),
        leadingWidth: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Account",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset(
                        "lib/images/profile.jpg",
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "jennie",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Youtube channel",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ForwardButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ),
                        );
                      },
                    ), //// icon button to somewhere
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "Setting",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Language",
                bgColor: Colors.orange.shade100,
                iconColor: Colors.orange,
                icon: Ionicons.language,
                value: "English",
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Notifications",
                bgColor: Colors.blue.shade100,
                iconColor: Colors.blue,
                icon: Ionicons.notifications,
                onTap: () {},
                
              ),
              const SizedBox(height: 20),
              SettingSwitch(
                title: "Dark Mode",
                bgColor: Colors.purple.shade100,
                iconColor: Colors.purple,
                icon: Ionicons.invert_mode_outline,
                value: isDarkMode,
                onTap: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Language",
                bgColor: Colors.red.shade100,
                iconColor: Colors.red,
                icon: Ionicons.earth,
                value: "English",
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Log Out",
                bgColor: Colors.grey.shade100,
                iconColor: Colors.grey,
                icon: Ionicons.log_out,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// // ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'change_pw.dart';
// import 'package:western/component/body.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Porfile"),
//       ),
//       body: Body(),
//     );
//   }
// }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'change_pw.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Color(0xFF4A90E2),
//         foregroundColor: Colors.black,
//         title: const Text(
//           "PROFILE",
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.settings_rounded,
//               color: Colors.white,
//             ),
//           )
//         ],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: const [Color(0xFF4A90E2), Color(0xFF50C9C3)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: ListView(
//           padding: const EdgeInsets.all(10),
//           children: [
//             // COLUMN THAT WILL CONTAIN THE PROFILE
//             Column(
//               children: const [
//                 CircleAvatar(
//                   radius: 50,
//                   backgroundImage: NetworkImage(
//                     "https://i.pinimg.com/564x/6b/2c/0b/6b2c0bd51b529791a7381f1e490bc2d6.jpg",
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "Johnson",
//                   style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//                 // Text("Junior Product Designer")
//               ],
//             ),
//             const SizedBox(height: 25),

//             const SizedBox(height: 35),
//             ...List.generate(
//               customListTiles.length,
//               (index) {
//                 final tile = customListTiles[index];
//                 return Container(
//                   child: Card(
//                     elevation: 4,
//                     shadowColor: Colors.black12,
//                     child: ListTile(
//                       leading: Icon(tile.icon),
//                       title: Text(
//                         tile.title,
//                         style: TextStyle(
//                           fontSize: 18,
//                         ),
//                       ),
//                       contentPadding: EdgeInsets.all(13),
//                       trailing: const Icon(Icons.chevron_right),
//                       onTap: tile.onTap, // Use the onTap callback function
//                     ),
//                   ),
//                 );
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProfileCompletionCard {
//   final String title;
//   final String buttonText;
//   final IconData icon;
//   ProfileCompletionCard({
//     required this.title,
//     required this.buttonText,
//     required this.icon,
//   });
// }

// List<ProfileCompletionCard> profileCompletionCards = [
//   ProfileCompletionCard(
//     title: "Set Your Profile Details",
//     icon: CupertinoIcons.person_circle,
//     buttonText: "Continue",
//   ),
//   ProfileCompletionCard(
//     title: "Upload your resume",
//     icon: CupertinoIcons.doc,
//     buttonText: "Upload",
//   ),
//   ProfileCompletionCard(
//     title: "Add your skills",
//     icon: CupertinoIcons.square_list,
//     buttonText: "Add",
//   ),
// ];

// class CustomListTile {
//   final IconData icon;
//   final String title;
//   final VoidCallback? onTap;
//   CustomListTile({
//     required this.icon,
//     required this.title,
//     this.onTap,
//   });

//   // void navigateToAnotherPage(BuildContext context) {}
// }

// List<CustomListTile> customListTiles = [
//   CustomListTile(
//     icon: Icons.person_2_outlined,
//     title: "Edit Profile",
//   ),
//   CustomListTile(
//     icon: Icons.email_outlined,
//     title: "Email",
//   ),
//   CustomListTile(
//     icon: Icons.insights,
//     title: "Activity",
//   ),
//   CustomListTile(
//     icon: Icons.location_on_outlined,
//     title: "Change Address",
//   ),
//   CustomListTile(
//     icon: Icons.key,
//     title: "Change Password",
//     onTap: () {
//       // navigateToAnotherPage(context);
//       // title.tap;
//       // Navigator.pushNamed(context, '/changePassword');
//     },
//   ),
//   // CustomListTile(
//   //   icon: Icons.location_on_outlined,
//   //   title: "Location",
//   // ),
//   CustomListTile(
//     title: "Notifications",
//     icon: CupertinoIcons.bell,
//   ),
//   CustomListTile(
//     title: "Delete Account",
//     icon: CupertinoIcons.delete,
//   ),
//   CustomListTile(
//     title: "Log out",
//     icon: CupertinoIcons.arrow_right_arrow_left,
//   ),
// ];
