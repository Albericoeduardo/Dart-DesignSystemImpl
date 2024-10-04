import 'package:develop_design_system/Views/Profile/profile.dart';
import 'package:develop_design_system/Views/Signup/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: ProfilePage()
      );
  }
}
