import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar
    (title: Text('Profil Saya', style: TextStyle(color: Colors.blue),),backgroundColor: Colors.blueGrey,),
    body: 
    Column(children: [
      SizedBox(height: 15),
    Image.asset ('images/ypc.png'),SizedBox(height: 10),
      Text('SMK YPC Tasikmalaya', 
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold) ,),
        Text('XI RPL 2'),

        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Column(
            children: [
              Icon(Icons.call),
              Text('Call'),
               ],
              ),
              Column(
                children: [
                  Icon(Icons.map),
                  Text('Route'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share),
                  Text('share'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
