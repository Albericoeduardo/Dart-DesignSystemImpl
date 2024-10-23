import 'package:develop_design_system/Scenes/Login/login_factory.dart';
import 'package:flutter/material.dart';

class SignupPageRouter {
  static void login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPageFactory.create('alberico', 'albericoSenha'))
    );
  }
}
