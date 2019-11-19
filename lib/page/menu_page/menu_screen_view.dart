import 'package:flutter/material.dart';
import 'package:kamar_8c/page/menu_page/menu_list/menu_list.dart';
import 'package:kamar_8c/page/menu_page/model/menu_model.dart';
import 'package:kamar_8c/page/menu_page/profile_page/profile_screen.dart';

class MenuScreenView extends StatelessWidget {
  final List<MenuModel> allMenus;
  final PageController pageController;
  final Function(int) setIndex;
  final int index;

  MenuScreenView({
    this.allMenus,
    this.pageController,
    this.setIndex,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.supervised_user_circle),
          Icon(Icons.favorite),
        ],
        title: Text('Catering Menu'),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          MenuList(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            title: Text('Menu'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text('Profile'),
          ),
        ],
        onTap: (index) {
          setIndex(index);
          pageController.animateToPage(
            index,
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400),
          );
        },
      ),
    );
  }
}
