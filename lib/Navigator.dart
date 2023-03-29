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
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
   FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('First page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child:ElevatedButton(
              child: Text('Go to the Second page'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => SecondPage()
                ));
            },
            ),
          ),
          SizedBox(height: 100,),
          Column(crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            ElevatedButton(onPressed: () {
              
            }, child: Text("ScreenA"))
          ],),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context2) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
        centerTitle: true,
      ),
      body: Center(
        child:ElevatedButton(
          child: Text('Go to the First page'),
        onPressed: () {
          Navigator.pop(context2);
        },
        ),
      ),
    );
  }
}