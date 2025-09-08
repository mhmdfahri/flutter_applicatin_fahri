import 'package:flutter/material.dart';

class LayoutLiatview extends StatelessWidget {
  const LayoutLiatview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Horizontal')),
      body: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(width: 100, color: Colors.red),
            Container(width: 100, color: Colors.green),
            Container(width: 100, color: Colors.blue),
            Container(width: 100, color: Colors.yellow),
            Container(width: 100, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}