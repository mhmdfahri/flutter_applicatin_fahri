import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil Saya',
          style: TextStyle(
            fontFamily: 'title',
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 81, 255),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),

            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color.fromARGB(255, 0, 87, 218), width: 3),
                ),
                child: ClipOval(
                  child: Image.asset('images/fahri.r.jpg', fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  'Muhammad Fahri',
                  style: TextStyle(
                    fontFamily: 'font1',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Murid SMK YPC Tasikmalaya',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  'Jurusan RPL',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  icon: Icon(Icons.call),
                  label: Text('CALL'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 81, 255),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  ),
                  onPressed: () {
                    
                  },
                ),
                SizedBox(width: 20),
                ElevatedButton.icon(
                  icon: Icon(Icons.map),
                  label: Text('ROUTE'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 81, 255),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  ),
                  onPressed: () {
                  },
                ),
                SizedBox(width: 20),

                ElevatedButton.icon(
                  icon: Icon(Icons.share),
                  label: Text('SHARE'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Color.fromARGB(255, 0, 81, 255),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  ),
                  onPressed: () {
                  },
                ),
              ],
            ),
          ],
        ),
     ),
);
}
}