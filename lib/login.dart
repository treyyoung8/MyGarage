import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primaryColor: const Color(0xFF30405A),
        primaryTextTheme:
            new TextTheme(title: TextStyle(color: Colors.deepOrange)),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: new Image.asset('images/logo.png', width: 500),
          title: Text('MyGarage'),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
          iconTheme: IconThemeData(
            color: Colors.deepOrange,
          ),
        ),
        body: new Container(
          decoration: new BoxDecoration(color: const Color(0xFF30405A)),
          padding: EdgeInsets.only(top: 8.0, left: 24.0, right: 24.0),
          child: new ListView(
            children: <Widget>[
              new Container(
                width: 80.0,
                height: 250.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: new DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: new AssetImage('images/logo.png')),
                ),
              ),
              new Center(
                child: new Text(
                  'Welcome to MyGarage',
                  style: new TextStyle(
                    fontSize: 22.00,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              new TextFormField(
                style: new TextStyle(
                  fontSize: 18.00,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
                decoration: InputDecoration(
                  labelText: 'Enter your username',
                ),
              ),
              new TextFormField(
                style: new TextStyle(
                  fontSize: 18.00,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
                decoration: InputDecoration(labelText: 'Enter your password'),
                obscureText: true,
              ),
              new SizedBox(
                height: 34.0,
              ),
              new RaisedButton(
                color: Colors.lightBlue[100],
                child: new Text(
                  'Go to MyGarage',
                  style: new TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/novette');
                },
              ),
              new SizedBox(
                height: 34.0,
              ),
              new RaisedButton(
                color: Colors.lightBlue[100],
                child: new Text(
                  'Sign Up',
                  style: new TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
