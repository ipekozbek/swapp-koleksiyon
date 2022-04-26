import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(const hosgeldin());
}

class hosgeldin extends StatelessWidget {
  const hosgeldin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'swapp',
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.purple,
          ),
        ),
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
        body: Container(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 70,
                height: 70,
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: 28),
                // padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Hoş Geldin İpek',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'QuickSand'),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 140,
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
                        'Takas ilanlarını keşfet',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'QuickSand'),
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/takas.png'),
                            fit: BoxFit.contain,
                            alignment: Alignment.topCenter),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color.fromARGB(255, 255, 255, 255)),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 140,
                  width: 299,
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    child: Container(
                      padding: EdgeInsets.only(left: 5, bottom: 3),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Profilini Oluştur',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'QuickSand'),
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/profil.png'),
                            fit: BoxFit.contain,
                            alignment: Alignment.topCenter),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color.fromARGB(255, 255, 255, 255)),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 140,
                  width: 299,
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    child: Container(
                      padding: EdgeInsets.only(left: 5, bottom: 3),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Koleksiyonerleri keşfet',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'QuickSand'),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 6,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/profil.png'),
                            fit: BoxFit.contain,
                            alignment: Alignment.topCenter),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color.fromARGB(246, 255, 255, 255)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
