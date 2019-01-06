import 'package:flutter/material.dart';
import './product_control.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;
  ProductManager({this.startingProduct});
  @override
  _ProductManagerState createState() => new _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];
  @override
  void initState() {
    // TODO: implement initState
    if (widget.startingProduct != null) _products.add(widget.startingProduct);
    super.initState();
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Expanded(child: Products(_products, _deleteProduct))
      ],
    );
  }
}
