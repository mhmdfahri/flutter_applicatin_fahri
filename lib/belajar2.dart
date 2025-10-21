import 'package:flutter/material.dart';

class Belajar2 extends StatelessWidget {
  const Belajar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya', style: TextStyle(color: Colors.deepOrangeAccent),),backgroundColor: Colors.brown,),
        body: 
        Column(children: [
          SizedBox(height: 20),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset('images/boboy.jpg', width: 200,),
            ),
          ),
          Text('BOBOY API',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Text('Api Membara'),

          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(onPressed:(){} , label: Text('pesan', style: TextStyle(color: Colors.black),), icon: Icon(Icons.message),
              style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(const Color.fromARGB(255, 165, 81, 24))),),
              ElevatedButton.icon(onPressed:(){} , label: Text('iPhone', style: TextStyle(color: Colors.black),), icon: Icon(Icons.apple),
              style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(const Color.fromARGB(255, 165, 81, 24))),),
              ElevatedButton.icon(onPressed:(){} , label: Text('Telepon', style: TextStyle(color: Colors.black),), icon: Icon(Icons.tab_sharp),)
            ],
          )
        ],
      ),
    );
  }
}