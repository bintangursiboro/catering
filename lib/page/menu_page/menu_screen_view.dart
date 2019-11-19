import 'package:flutter/material.dart';
import 'package:kamar_8c/page/menu_page/model/menu_model.dart';

class MenuScreenView extends StatelessWidget {
  final List<MenuModel> allMenus;

  MenuScreenView({this.allMenus});

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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(100, (index) {
            return Center(
              child: Text('Item $index'),
            );
          }),
        ),
      ),
    );
  }
}
