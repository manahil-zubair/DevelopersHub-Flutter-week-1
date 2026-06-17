import 'package:flutter/material.dart';
import 'package:internship_task/Screens/login_screen.dart';
import 'package:internship_task/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Internship Week 1',
      home: LoginScreen(),
    );
  }
}