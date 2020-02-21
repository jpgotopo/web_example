import 'package:flutter/material.dart';

import 'centralbody/centralbody.dart';
import 'navbar/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xFF00BCD4), Color(0xFF1E88E5)]
          )
        ),
        child: ListView(
          children: <Widget>[
            NavBar(),
            SizedBox(height: 50),
            CentralBody(),
          ],
        ),
      ),
    );
  }
}

