// ignore_for_file: camel_case_types, prefer_const_constructors, unnecessary_this
import 'package:flutter/material.dart';

// Sayfada kullanılan Özel Butonlar
class sex_button extends StatelessWidget {
  final String cinsiyet;
  final IconData icon;

  sex_button({this.cinsiyet = '', required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          color: Colors.black54,
          size: 50,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          this.cinsiyet,
          style: TextStyle(color: Colors.black54, fontSize: 20),
        )
      ],
    );
  }
}
