import 'package:flutter/material.dart';
import './product_manager.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('EasyList'),
        ),
        body: ProductManager(),
        ),
    );
  }
}
