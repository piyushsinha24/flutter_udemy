import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  Widget _buildProduct(BuildContext context,int index)
  {
    return Card(
      child: new Column(
        children: <Widget>[
          Image.asset('assets/food.jpeg'),
          Text(products[index])
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return products.length>0? ListView.builder(
      itemBuilder: _buildProduct,
      itemCount: products.length,

    ) : Center(child: Text('No Products Found, Please add'),);
  }
}
