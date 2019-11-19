import 'package:flutter/material.dart';
import 'package:kamar_8c/page/menu_page/profile_page/profile_screen_view.dart';

class ProfileScreen extends StatefulWidget {
  static const String PATH = '/profile-screen';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ProfileScreenView();
  }
}
