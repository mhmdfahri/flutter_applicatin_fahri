import 'package:flutter/material.dart';
// import 'package:flutter_applicatin_fahri/belajar2.dart';
import 'package:flutter_applicatin_fahri/objek_wisata.dart';
//import 'package:flutter_applicatin_fahri/layout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi Flutter",
      home:ObjekWisata());
  }
}
