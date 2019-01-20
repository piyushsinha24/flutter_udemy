import 'package:flutter/material.dart';

import './products.dart';

class AuthPage extends StatelessWidget {
  String loginid = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Login ID'),
              onChanged: (String value) {
                loginid = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (String value) {
                password = value;
              },
            ),
            RaisedButton(
              child: Text('LOGIN'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/p');
              },
            ),
          ],
        ),
      ),
    );
  }
}
