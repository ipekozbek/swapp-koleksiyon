import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';


void main() {
  runApp( kayit());
}

class kayit extends StatelessWidget {
  const kayit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'swapp',
        theme: ThemeData(
          primaryColor: Colors.purple,
        ),
        home: Scaffold(
          body: Container(
            child: ListView(
              children: [
                Container(
                  // height: 60,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('assets/images/logo.png'),
                ),
                Container(
                  child: Text(
                    "E-mail adresinle kolayca Swapp'e katıl",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(28),
                  //padding: EdgeInsets.only(top: 125, bottom: 125),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.purple),
                  width: 280,
                  height: 42,
                  child: Container(
                    padding: EdgeInsets.only(left: 12, top: 10, bottom: 3),
                    child: Text('E-mail',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white70,
                        )),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, top: 10, bottom: 3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 210, 158, 219)),
                        onPressed: () {},
                        child: Container(
                            padding: EdgeInsets.only(bottom: 3),
                            child: const Text('Devam Et',
                                textAlign: TextAlign.end)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
