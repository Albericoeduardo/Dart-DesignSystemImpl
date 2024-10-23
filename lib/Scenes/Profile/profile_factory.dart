import 'package:develop_design_system/Scenes/Profile/profile_view.dart';
import 'package:flutter/material.dart';

class ProfilePageFactory {
  static Widget create(userEmail) {
    return ProfilePage(userEmail: userEmail,);
  }
}
