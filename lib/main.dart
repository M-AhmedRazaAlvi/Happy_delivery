// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:happy_delivery/Screens/auth/splash.dart';
import 'package:happy_delivery/Screens/serviecs/landing_page.dart';
import 'package:happy_delivery/widget/exercise.dart';
import 'package:happy_delivery/widget/showModal.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'HAPPY DELIVERY',
      home: LandingPage(),
    );
  }
}
