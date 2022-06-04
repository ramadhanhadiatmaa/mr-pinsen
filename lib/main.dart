// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'screens/home_screen.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mr.Pinsen',
      home: HomeScreen(),
    );
  }
}
