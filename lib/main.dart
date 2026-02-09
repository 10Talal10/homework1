import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Tutorial'),
          centerTitle: true,
        ),
        body: const GamePage(),
      ),
    );
  }
}

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 5 صفوف
          for (int row = 0; row < 5; row++)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 5 أعمدة
                for (int col = 0; col < 5; col++)
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.black),
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}