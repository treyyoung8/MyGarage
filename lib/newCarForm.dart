import 'package:flutter/material.dart';

class CarForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'New Car Page',
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
          padding: EdgeInsets.only(top: 48.0, left: 24.0, right: 24.0),
          child: new ListView(
            children: <Widget>[
              new Center(
                child: new Text(
                  'Please type in your VIN.',
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
                  labelText: 'Enter your VIN',
                ),
              ),
              new SizedBox(
                height: 34.0,
              ),
              new RaisedButton(
                color: Colors.lightBlue[100],
                child: new Text(
                  'Add Car',
                  style: new TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
          return Theme(
            data: Theme.of(context).copyWith(dialogBackgroundColor: Colors.lightBlue[100]),
                    child: new AlertDialog(
                      title: new Text('Is this your car?'),
                      content: new Text('1985 Chevrolet Corvette\n\n\5.7L V8 230HP 330 ft/lb Torque'),
                      actions: <Widget>[
                        RaisedButton(
                          color: Colors.deepOrange,
                          child: Text('Confirm',
                          style: new TextStyle(
                            color: const Color(0xFF30405A),
                          ),),
                          onPressed: () {Navigator.pushNamed(context, '/');},
                        ),
                        RaisedButton(
                          color: Colors.deepOrange,
                          child: Text('Try Again',
                          style: new TextStyle(
                            color: const Color(0xFF30405A),
                          ),),
                          onPressed: () {Navigator.pushNamed(context, '/newcar');},
                        ),
                      ],
                    ),
          );
                    }
                  );
                },
              ),
              new SizedBox(
                height: 34.0,
              ),
              new RaisedButton(
                color: Colors.lightBlue[100],
                child: new Text(
                  'Go Back',
                  style: new TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
