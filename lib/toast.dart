import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
    return  Scaffold(
      appBar: AppBar(
        title: Text('Toast message'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow)
          ),
          onPressed: () {
          fluttertoast();
        },
        child: Text('Toast'),
        )
        ),
    );
  }
}


void fluttertoast(){
  Fluttertoast.showToast(msg: 'Flutter',
  gravity: ToastGravity.BOTTOM,
  backgroundColor: Colors.redAccent,
  fontSize: 20.0,
  textColor: Colors.white,
  toastLength: Toast.LENGTH_SHORT
  );
}





/*import 'package:flutter/material.dart';

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
    return  Scaffold(
      appBar: AppBar(
        title: Text('Toast message'),
        centerTitle: true,
      ),
    );
  }
}*/