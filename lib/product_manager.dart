import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  _ProductManagerState createState() => new _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('Advance Food Tester');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
