import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Project'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Nama: ',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan nama Anda',
                contentPadding: EdgeInsets.all(10),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'NIM: ',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan NIM Anda',
                contentPadding: EdgeInsets.all(10),
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemCount: imagePaths.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implementasi aksi saat tombol 1 ditekan
                  },
                  child: Text('Tombol 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implementasi aksi saat tombol 2 ditekan
                  },
                  child: Text('Tombol 2'),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
