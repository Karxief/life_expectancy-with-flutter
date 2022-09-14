import 'package:flutter/material.dart';
import 'package:life_expectancy/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(115, 98, 91, 91),
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Colors.orange),
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.black54, fontSize: 20),
          bodyText1: TextStyle(color: Colors.black54, fontSize: 20),
          headline6: TextStyle(
            fontSize: 25.0,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
