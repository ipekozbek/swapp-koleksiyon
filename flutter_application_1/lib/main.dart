//import 'dart:html';

//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/hosgeldin.dart';
import 'package:flutter_application_1/drowpdown_button.dart';
import 'package:flutter_application_1/kayit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swapp',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(automaticallyImplyLeading: true,),
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 60,
              margin: EdgeInsets.only(top: 15),
              child: Image.asset('assets/images/logo.png'),
            ),
            Container(
              child: Image.asset('assets/images/koleksiyon.png'),
              //height: 80,
              padding: EdgeInsets.only(top: 10),
              //color: Colors.amber,
            ),
            Container(
              width: 350,
              height: 380,
              margin:
                  const EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 80),
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromARGB(255, 88, 51, 190),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.amber),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => kayit()));
                    },
                    child: const Text('Aramıza Hoş Geldin',
                        textAlign: TextAlign.start),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const hosgeldin()));
                      },
                      child: const Text(
                        'Zaten Üyeyim',
                        textAlign: TextAlign.end,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
