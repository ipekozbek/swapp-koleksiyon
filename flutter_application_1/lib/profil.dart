import 'package:flutter/material.dart';
import 'drowpdown_button.dart';

void main() {
  runApp(const profil());
}

class profil extends StatelessWidget {
  const profil({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'swapp',
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: Scaffold(
        bottomNavigationBar: Container(
          height: 60,
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 30)),
                Icon(Icons.person, size: 30, color: Colors.purple),
                Padding(padding: EdgeInsets.only(left: 40)),
                Icon(Icons.home, size: 30, color: Colors.purple),
                Padding(padding: EdgeInsets.only(left: 40)),
                Icon(Icons.settings, size: 30, color: Colors.purple),
                Padding(padding: EdgeInsets.only(left: 40)),
                Icon(Icons.message, size: 30, color: Colors.purple)
              ],
            ),
          ),
        ),
        body: DropDownButtonKullanimi(),
        /*       Center(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 70,
                height: 70,
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: 299,
                  margin: EdgeInsets.only(
                    top: 40,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    child: Container(
                      padding: EdgeInsets.only(left: 5, bottom: 3),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Koleksiyonerlerin seni tanıması ve  sana teklif göndermeleri için kendini tanıtmalısın.',
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color.fromARGB(255, 255, 255, 255)),
                  )),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 210, top: 30),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                ],
              ),
            ],
          ),
        ), */
      ),
    );
  }
}
