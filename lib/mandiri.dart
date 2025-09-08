import 'package:flutter/material.dart';

class mandiri extends StatelessWidget {
  const mandiri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list daan gridview'),
        backgroundColor: const Color.fromARGB(255, 0, 162, 255),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Menu Aplikasi:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          ListTile(
            leading: Icon(Icons.macro_off),
            title: Text('Rasa'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.coffee),
            title: Text('Coffe'),
          ),

          Padding(
            padding: EdgeInsetsGeometry.all(12),
            child: Text(
              'Starbucks',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 15,),
                 Image.asset('images/starbucks.jpg', width: 150, fit: BoxFit.cover),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Jenis Coffe:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 10,),
                Image.asset('images/3.jpg', width: 150, fit: BoxFit.cover),
                SizedBox(width: 10,),
                Image.asset('images/4.jpg', width: 150, fit: BoxFit.cover),
                SizedBox(width: 10,),
                Image.asset('images/5.jpg', width: 150, fit: BoxFit.cover),
                SizedBox(width: 10,),
                Image.asset('images/6.jpg', width: 150, fit: BoxFit.cover),
                SizedBox(width: 10,),
                Image.asset('images/7.jpg', width: 150, fit: BoxFit.cover),
                
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Grid Item:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true, 
            physics: NeverScrollableScrollPhysics(), 
            children: List.generate(20, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(fontSize: 20),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
