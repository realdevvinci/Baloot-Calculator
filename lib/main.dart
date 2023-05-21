import 'package:flutter/material.dart';
import 'firstPage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0xFF0A0D22)),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
       fontFamily: "Cairo1"


      ),
      home: firsPage(),

    );
  }
}
