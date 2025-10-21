import 'package:flutter/material.dart';

class ObjekWisata extends StatelessWidget {
  const ObjekWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Center(child:
        Text('Hutan Mati', style: TextStyle(fontSize: 30),),),backgroundColor: Colors.white,),
        body: 
        Column(children: [
          Center(
            child: Image.asset('images/objek_wisata.jpg',),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(height: 30),
                  Text('Hutan Mati Berada di Papamdayan',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('Garut, Jawa Barat'),
                    ]
                ),
                Icon(Icons.star, color: Colors.red,),
                SizedBox(height: 5,),
                Text('41'),
              ]
            ),

          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
             Icon(Icons.call),
             Text('CALL'),],),
             Column(
                children: [
             Icon(Icons.near_me),
             Text('ROUTE'),],),
              Column(
                children: [
             Icon(Icons.share),
             Text('SHARE'),],),
            ],
          ),
          SizedBox(height: 30),
          Center(child: 
          Text('Hutan Mati Papandayan adalah kawasan eksotis di Gunung Papandayan, Garut yang terbentuk dari letusan gunung pada tahun 1772 dan 2002. Kawasan ini terkenal dengan pemandangan pohon-pohon kering yang menghitam dan tetap berdiri kokoh, menciptakan lanskap yang dramatis, unik, dan sedikit misterius. Hutan ini menjadi salah satu titik populer bagi pendaki dan fotografer karena keindahannya yang khas, terutama saat dikelilingi kabut atau kontras dengan warna pepohonan. '),
        ),
        ],
      )
    );
  }
}