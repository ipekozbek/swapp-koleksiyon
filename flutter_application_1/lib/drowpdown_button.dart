import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  _DropDownButtonKullanimiState createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenAy = null;
  List<String> _tumAylar = [
    'Ocak',
    'Şubat',
    'Mart',
    'Nisan',
    'Mayıs',
    'Haziran',
    'Temmuz',
    'Ağustos',
    'Eylül',
    'Ekim',
    'Kasım',
    'Aralık'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 250),
      child: DropdownButton<String>(
        hint: Text('Ay'),
        iconSize: 32,
        style: TextStyle(color: Colors.black),
        items: _tumAylar
            .map(
              (String oankiAy) => DropdownMenuItem(
                child: Text(oankiAy),
                value: oankiAy,
              ),
            )
            .toList(),
        value: _secilenAy,
        onChanged: (String? yeni) {
          setState(() {
            _secilenAy = yeni;
          });
        },
      ),
    );
  }
}
