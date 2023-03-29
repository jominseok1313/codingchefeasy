// 빌더 위젯 없이 SnackBar만들기

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
   MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ElevatedButton(
        child: Text('Show me'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('data',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white
              ),
              ),
              backgroundColor: Colors.teal,
              duration: Duration(microseconds: 1000),
          ),
          );
        },
      ),
    );
  }
}