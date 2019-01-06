import 'package:flutter/material.dart';
import './pages/product_page.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;
  Products(this.products, this.deleteProduct);

  Widget _buildProduct(BuildContext context, int index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            Image.asset(products[index]['image']),
            Text(products[index]['title']),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Details'),
                  onPressed: () => Navigator.push<bool>(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ProductPage(
                              products[index]['title'],
                              products[index]['image']),
                        ),
                      ).then((bool value) {
                        if (value) {
                          deleteProduct(index);
                        }
                      }),
                )
              ],
            )
          ],
        ),
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
