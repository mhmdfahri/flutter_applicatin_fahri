import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Spacedlist extends StatelessWidget {
  const Spacedlist ({super.key});

  @override
  Widget build(BuildContext context) {
   const int itemsCount = 4;

    return Scaffold(
      appBar:AppBar(
        title: const Text('Spaced List', style: TextStyle(
         color: Colors.white),
        ),
        backgroundColor: CupertinoColors.secondaryLabel,
      ),
      body: LayoutBuilder(
        builder: (context, contraints){
          return SingleChildScrollView(
            child: ConstrainedBox(
            constraints:BoxConstraints(minHeight:contraints.maxHeight)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(itemsCount,
                (index) => Card(
                  margin: const EdgeInsets.all(8),
                  color: Colors.blue[100 * (index + 2)],
                  child: Center(
                    child: Text(
                      'item $index',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              )
            )
          );
        }
      ),
    );
  }
}