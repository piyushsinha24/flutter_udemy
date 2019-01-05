import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(padding: EdgeInsets.all(10.0),child: Image.asset('assets/food.jpeg')),
            Container(padding:EdgeInsets.all(10.0),child: Text('Product Details Page!!!')),
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Back'),
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
