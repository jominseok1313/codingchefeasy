import 'package:flutter/material.dart';
import 'ScreenA.dart';

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
      initialRoute : '/',
      routes: {
        '/':(context) => MyPage(),
        '/b' :(context) => ScreenA()
      },
    );
  }
}


class MyPage extends StatelessWidget {
   MyPage({super.key});

  @override
  Widget build(BuildContext ctx) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
        centerTitle: true,
      ),
      body: Builder(builder: (BuildContext ctx) {  
        return Column(
        children: [ Center(
          child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text("되나?")));
                },
                style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 15, color: Colors.white)),
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: Text("ElevatedButton"),
              ),
        ),
        ElevatedButton(onPressed: (){
        }, 
        child: Text('ScreenA'))
            ]
      );
      },)
    );
  }
}

