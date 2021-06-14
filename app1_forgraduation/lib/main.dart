import 'package:flutter/material.dart';
import 'page_home.dart';
import 'home_splash.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP for graduation',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: PageHome(),
    );
  }
}
