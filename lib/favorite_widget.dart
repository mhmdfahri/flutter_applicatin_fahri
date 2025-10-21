import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FavoriteWidget> {

  bool _isFavorite = true;
  int _favoriteCount = 40;

  void toongleFavorite(){
    setState(() {
      if (_isFavorite) {
        _favoriteCount -= 1;
        _isFavorite = false;
      }else {
         _favoriteCount += 1;
        _isFavorite = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 129, 127, 127),
      appBar: AppBar(
        title: const Text(
          'FAVORITE WIDGET', style: TextStyle(color: CupertinoColors.extraLightBackgroundGray),
          ),
          backgroundColor: const Color.fromARGB(255, 70, 69, 69),
      ),
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Tekan Bintang Untuk Menambahkan Dan Menghapus Favorite',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 97, 96, 96)
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: toongleFavorite, icon: _isFavorite ?
                    const Icon(Icons.star)
                    : const Icon(Icons.star_border),
                    iconSize: 40,
                    color: const Color.fromARGB(255, 109, 108, 108),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      '$_favoriteCount',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 97, 96, 96)
                      ),
                    )
                  ],
                )
              ],
            )
           ),
        ),
      ),
    );
  }
}