import 'package:flutter/material.dart';
import 'package:travelapp/sceen/firstpage/myfirstpage.dart';

import 'sceen/home_page.dart';
//second commit
//third commit
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstPage(),
    );
  }
}
