import 'package:flutter/material.dart';
import 'package:oraxtechtask/Explore/explore_screen.dart';
import 'package:oraxtechtask/profile/profile_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),

    );
  }
}

