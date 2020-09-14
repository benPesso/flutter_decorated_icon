import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DecoratedIcon Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DecoratedIcon(
              Icons.android,
              color: Colors.purple,
              size: 60.0,
              shadows: [
                BoxShadow(
                  blurRadius: 42.0,
                  color: Colors.purpleAccent,
                ),
                BoxShadow(
                  blurRadius: 12.0,
                  color: Colors.white,
                ),
              ],
            ),
            DecoratedIcon(
              Icons.favorite,
              color: Colors.lightBlue.shade50,
              size: 60.0,
              shadows: [
                BoxShadow(
                  blurRadius: 12.0,
                  color: Colors.blue,
                ),
                BoxShadow(
                  blurRadius: 12.0,
                  color: Colors.green,
                  offset: Offset(0, 6.0),
                  spreadRadius: 60.0,
                ),
              ],
            ),
            DecoratedIcon(
              Icons.fingerprint,
              color: Colors.orange,
              size: 60.0,
              shadows: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
