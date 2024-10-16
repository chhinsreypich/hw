import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({super.key});

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: const Text(
          'Reminder',
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Assignment',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  RadioListTile(
                    title: const Text('Khmer'),
                    value: 'Khmer',
                    groupValue: 'Khmer',
                    onChanged: (value) {},
                  ),
                  RadioListTile(
                    title: const Text('English'),
                    value: 'English',
                    groupValue: 'English',
                    onChanged: (value) {},
                  ),
                  RadioListTile(
                    title: const Text('Chinese'),
                    value: 'Chinese',
                    groupValue: 'Chinese',
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
//////////////////////////////
            ///
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'School Fees',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  RadioListTile(
                    title: const Text('Khmer'),
                    value: 'Khmer',
                    groupValue: 'Khmer',
                    onChanged: (value) {},
                  ),
                  RadioListTile(
                    title: const Text('English'),
                    value: 'English',
                    groupValue: 'English',
                    onChanged: (value) {},
                  ),
                  RadioListTile(
                    title: const Text('C++'),
                    value: 'C++',
                    groupValue: 'C++',
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),

////////////////////
            const SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create your own Tasks',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            // labelText: 'Search for a city',
                            filled: true,
                            fillColor: Color.fromARGB(255, 246, 244, 244),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(10.0),
                            // ),
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
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
