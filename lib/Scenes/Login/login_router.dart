import 'package:develop_design_system/Scenes/Profile/profile_factory.dart';
import 'package:develop_design_system/Scenes/Signup/signup_factory.dart';
import 'package:flutter/material.dart';

class LoginPageRouter {
  static void goToProfilePage(BuildContext context, userEmail) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePageFactory.create(userEmail))
    );
  }

  static void goToSignupPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignupPageFactory.create())
    );
  }
}
