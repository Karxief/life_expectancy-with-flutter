// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

// Sayfada kullanılan Özel Containerlar
class CustomContainerWdt extends StatelessWidget {
  final Color? color;
  final Widget? child;
  const CustomContainerWdt({this.color, this.child});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: child,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: color ?? Theme.of(context).primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
