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
                          '\n\5.7L V8 230HP 330 ft/lb Torque\n\4+3 Manual Transmission\n\RWD',
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
                              'Front PSI: 35, Rear PSI: 35\n\Front Size: 255/50VR-16, Rear Size: 255/50VR-16\n\Brand: GOODYEAR EAGLE VR'),
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
                          subtitle: Text(
                              'Type: 10w30\n\Capacity: 4.0 Quarts\n\Brand: Mobil 1\n\Oil Filter: AC Type PF25'),
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
                          subtitle: Text('Part Number: AC Type A917C'),
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
                              Text('Headlamps Part Number: H6054\n\Headlamps Wattage: 35W/65W\n\Taillight Bulbs Part Number: 2057\n\Taillights Bulbs Wattage: 32/2\n\Turn Signals Part Number: 2057NA\n\Turn Signals Wattage: 2.4/1.5'),
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
                          title: Text('Fuse Panel Layout'),
                          subtitle: new Container(
                            width: 80.0,
                            height: 200.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: new AssetImage('images/fuse.jpg')),
                            ),
                          ),
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
                          title: Text('Fuel'),
                          subtitle: Text(
                              'Type: Premium Fuel only\n\Capacity: 20 Gallons'),
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
                          title: Text('Spark Plugs'),
                          subtitle: Text('Gap: 0.035\n\Part Number: AC Type R43CTS'),
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
                          title: Text('Battery'),
                          subtitle: Text('Model Number: 70-500'),
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
