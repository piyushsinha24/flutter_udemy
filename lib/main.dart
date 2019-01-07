import 'package:flutter/material.dart';
import './pages/auth.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: AuthPage(),
    );
  }
}
