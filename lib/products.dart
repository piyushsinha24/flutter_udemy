import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: products
          .map((element) => Card(
                child: new Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpeg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
