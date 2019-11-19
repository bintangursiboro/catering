import 'package:flutter/material.dart';

class MenuListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
