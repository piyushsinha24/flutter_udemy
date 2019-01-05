import 'package:flutter/material.dart';
import './pages/product_page.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  Widget _buildProduct(BuildContext context, int index) {
    return Card(
      child: new Column(
        children: <Widget>[
          Image.asset('assets/food.jpeg'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(),
                      ),
                    ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProduct,
            itemCount: products.length,
          )
        : Center(
            child: Text('No Products Found, Please add'),
          );
  }
}
