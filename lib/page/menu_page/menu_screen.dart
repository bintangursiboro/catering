import 'package:flutter/material.dart';
import 'package:kamar_8c/page/menu_page/menu_screen_view.dart';

class MenuScreen extends StatefulWidget {
  static const String PATH = '/menu-screen';
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  PageController controller = PageController(initialPage: 0);
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MenuScreenView(
      pageController: controller,
      setIndex: onTap,
      index: currentIndex,
    );
  }
}
