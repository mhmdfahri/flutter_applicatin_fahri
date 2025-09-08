import 'package:flutter/material.dart';

class LayoutListview2 extends StatelessWidget {
  const LayoutListview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contoh GreadView')),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Center(
            child: Text('Item $index',style: TextStyle(fontSize: 20)),
          );
        }),
      ),
    );
  }
}