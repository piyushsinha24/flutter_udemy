import 'package:flutter/material.dart';

import './products.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => new _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with SingleTickerProviderStateMixin {

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState()
  {
    super.initState();
    _iconAnimationController=new AnimationController(
        vsync:this,
        duration: new Duration(milliseconds: 500)
    );
    _iconAnimation=new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeOut,
    );
    _iconAnimation.addListener(()=>this.setState((){}));
    _iconAnimationController.forward();
  }
  String loginid = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/bg3.jpg"),
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlutterLogo(
                    size: _iconAnimation.value*100,
                    colors: Colors.red,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      icon: Icon(Icons.assignment_ind),
                    ),
                    onChanged: (String value) {
                      loginid = value;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      icon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                    onChanged: (String value) {
                      password = value;
                    },
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  RaisedButton(
                    child: Text('LOGIN'),
                    textColor: Colors.white,
                    color: Colors.red,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/p');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
