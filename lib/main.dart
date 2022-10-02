import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int diceNumber1=1;
  int diceNumber2=1;

  void updatedice(){
    setState(() {
      diceNumber1=Random().nextInt(6)+1;
      diceNumber2=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Pengacak Dadu',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Aplikasi Acak Dadu',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 25.0,
            ),
          )
        ),
        body: SafeArea(
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Row(
                children: [
                  Expanded(child: Column(children: [
                    Text('$diceNumber1', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900,color: Colors.white),),
                    TextButton(child: Image.asset('assets/images/dice$diceNumber1.png'),onPressed: (){
                      updatedice();
                    },),
                  ],
                  )),
                  Expanded(child: Column(children: [
                    Text('$diceNumber2', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900,color: Colors.white),),
                    TextButton(child: Image.asset('assets/images/dice$diceNumber2.png'),onPressed: (){
                      updatedice();
                    },),
                  ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
