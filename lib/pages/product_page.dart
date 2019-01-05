import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Product Details'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Product Details Page!!!'),
            RaisedButton(onPressed:()=> Navigator.pop(context),child: Text('Back'),)
          ],
        ),
      )
    );
  }
}
