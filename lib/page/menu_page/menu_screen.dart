import 'package:flutter/material.dart';
import 'package:kamar_8c/page/menu_page/menu_screen_view.dart';

class MenuScreen extends StatefulWidget {
  static const String PATH = '/menu-screen';
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return MenuScreenView();
  }
}
