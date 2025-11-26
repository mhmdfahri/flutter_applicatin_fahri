import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LatihanSkilpasport extends StatelessWidget {
  const LatihanSkilpasport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      Text('Profil Saya', style: TextStyle(
        fontFamily: 'title',
          fontSize: 25,
            color: Colors.white),),
            backgroundColor: Colors.brown,),
            
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [SizedBox(height: 40,),
                Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(shape: BoxShape.circle,
                    border: Border.all(color: CupertinoColors.systemBrown, width: 3),
                    ),
                    child: ClipOval(
                      child: Image.asset('images/fahri.r.jpg', fit: BoxFit.cover,),
                    ),
                  ),
                )],
              ),
            ),
    );
  }
}
