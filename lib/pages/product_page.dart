import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imgurl;
  ProductPage(this.title, this.imgurl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10.0), child: Image.asset(imgurl)),
              Container(padding: EdgeInsets.all(10.0), child: Text(title)),
              RaisedButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text('Delete'),
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
