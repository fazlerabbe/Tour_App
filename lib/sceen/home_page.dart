import 'package:flutter/material.dart';

import 'home_pade_part/aftertextfield.dart';
import 'home_pade_part/bottomrow.dart';
import 'home_pade_part/rowtextlist.dart';
import 'home_pade_part/textfield.dart';
import 'home_pade_part/top1.dart';
import 'home_pade_part/travelinfo.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _items = [
    const Text('Home'),
    const Text('Business'),
    const Text('School'),
    const Text('Fevorate'),
  ];

  int cIndex = 0;
  final iconLinearGradiant = List<Color>.from([
    const Color.fromARGB(255, 251, 2, 197),
    const Color.fromARGB(255, 72, 3, 80)
  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTop1(),
            SizedBox(
              height: 10,
            ),
            MyTextField(),
            SizedBox(
              height: 10,
            ),
            AfterMyTextField(),
            SizedBox(
              height: 10,
            ),
            Text(
              'Explore Cities',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            MyRowTextList(),
            MyTravelInfo(),
            Text(
              'Popular Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            MyBottomRow(),
          ],
        ),
      ),
      bottomNavigationBar: SweetNavBar(
        // paddingGradientColor: const LinearGradient(colors: [
        //   Color.fromARGB(255, 72, 3, 80),
        //   Color.fromARGB(255, 72, 3, 80)
        // ]),
        currentIndex: cIndex,
        backgroundColor: Color(0xFFECDBCC),
        //paddingBackgroundColor: Colors.red,
        items: [
          SweetNavBarItem(
              sweetActive: const Icon(Icons.home),
              sweetIcon: const Icon(
                Icons.home_outlined,
              ),
              sweetLabel: 'Home',
              iconColors: iconLinearGradiant,
              sweetBackground: Color(0xFFECDBCC)),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.business), sweetLabel: 'Business'),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.favorite), sweetLabel: 'School'),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.school), sweetLabel: 'School'),
        ],
        onTap: (index) {
          setState(() {
            cIndex = index;
          });
        },
      ),
    );
  }
}
