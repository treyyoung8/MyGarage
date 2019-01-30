import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyGarage',
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
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                new Container(
                  width: 80.0,
                  height: 250.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: new AssetImage('images/vette2.jpg')),
                  ),
                ),
                Card(
                  color: Colors.lightBlue[100],
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 8.0,
                        left: 8.0,
                      ),
                      child: new ListTile(
                        title: Text(
                          '1985 Chevrolet Corvette',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          '\n\5.7L V8 230HP 330 ft/lb Torque\n\4+3 Manual Transmission\n\RWD\n\20 Gallon Fuel Tank\n\Premium Fuel Only',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(children: <Widget>[
                        FlatButton(
                          child: const Text('Return to MyGarage',
                              style: TextStyle(
                                color: const Color(0xFF30405A),
                              )),
                          color: Colors.deepOrange,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ]),
                    ),
                  ]),
                ),
                Card(
                  color: Colors.lightBlue[100],
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                          left: 8.0,
                        ),
                        child: new ListTile(
                          title: Text('Tires'),
                          subtitle: Text(
                              'Front PSI: 28, Rear PSI: 28\n\Front Size: 255/50VR-16, Rear Size: 255/50VR-16\n\Recommended Replacement: GOODYEAR EAGLE VR'),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.lightBlue[100],
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                          left: 8.0,
                        ),
                        child: new ListTile(
                          title: Text('Oil'),
                          subtitle: Text('Type:\n\Capacity: 4.0 Quarts'),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.lightBlue[100],
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                          left: 8.0,
                        ),
                        child: new ListTile(
                          title: Text('Brakes'),
                          subtitle: Text(
                              'Type (Front and Rear): 11.5 in. vacuum assist. vented disk'),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.lightBlue[100],
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                          left: 8.0,
                        ),
                        child: new ListTile(
                          title: Text('Air Filter'),
                          subtitle: Text('Type:'),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.lightBlue[100],
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                          left: 8.0,
                        ),
                        child: new ListTile(
                          title: Text('Lights'),
                          subtitle:
                              Text('Headlights:\n\Taillights:\n\Turn Signals:'),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.lightBlue[100],
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                          left: 8.0,
                        ),
                        child: new ListTile(
                          title: Text('Fuses'),
                          subtitle: Text('Type:'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
