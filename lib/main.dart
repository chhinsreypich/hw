import 'package:flutter/material.dart';
import 'package:studies/groupPage.dart';
import 'package:studies/reminderPage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Weather App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', 
      routes: {
        // "/": (context) => ReminderPage(),
        "/": (context) => GroupPage(),
      },
    );
  }
}

