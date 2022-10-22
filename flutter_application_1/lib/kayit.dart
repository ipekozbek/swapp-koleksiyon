import 'package:flutter/material.dart';
//import 'package:email_validator/email_validator.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(const kayit());
}

class kayit extends StatefulWidget {
  const kayit({Key? key}) : super(key: key);

  @override
  _kayit createState() => _kayit();
}

class _kayit extends State<kayit> {
  String _email = '', _password = '', _userName = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* appBar: AppBar(
        title: Text('Textform field kullanimi'),
      ), */
        body: Container(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            width: 70,
            height: 70,
            child: Image.asset('assets/images/logo.png'),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 150, left: 10, right: 10),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextFormField(
                      //initialValue: 'emrealtunbilek',
                      decoration: InputDecoration(
                          //errorStyle: TextStyle(color: Colors.orange),
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                          hintText: 'Username'),
                      onSaved: (deger) {
                        _userName = deger!;
                      },
                   /*    validator: (deger) {
                        if (deger!.length < 4) {
                          return 'Username en az 4 karakter olmalı';
                        } else
                          return null;
                      }, */
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      //initialValue: 'emrealtunbilek@gmail.com',
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          //errorStyle: TextStyle(color: Colors.orange),
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'Email'),
                      onSaved: (deger) {
                        _email = deger!;
                      },
                     /*  validator: (deger) {
                        if (deger!.isEmpty) {
                          return 'email boş olamaz';
                        } else if (!EmailValidator.validate(deger)) {
                          return 'Geçerli mail giriniz';
                        } else
                          return null;
                      }, */
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      //initialValue: 'emrealtunbilek@gmail.com',
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          //errorStyle: TextStyle(color: Colors.orange),
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Password'),
                      onSaved: (deger) {
                        _password = deger!;
                      },
                      validator: (deger) {
                        if (deger!.length < 6) {
                          return 'Şifre ne az 6 karakter olmalı';
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        bool _validate = _formKey.currentState!.validate();
                        if (_validate) {
                          _formKey.currentState!.save();
                          String result =
                              'username:$_userName\nemail:$_email\nSifre:$_password';

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.orange.shade300,
                              content: Text(
                                result,
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          );
                          _formKey.currentState!.reset();
                        }
                      },
                      child: Text('Onayla'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
