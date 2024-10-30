import 'package:develop_design_system/Scenes/Login/login_factory.dart';
import 'package:flutter/material.dart';

class ProfilePageRouter {
  static void logout(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPageFactory.create('' as Map<String, String>))
    );
  }
}
