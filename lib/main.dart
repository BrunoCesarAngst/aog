import 'package:flutter/material.dart';
import 'package:aog/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Home(title: 'Álcool ou Gasolina'),
    );
  }
}