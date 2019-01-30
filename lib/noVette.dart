import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;




class NoVette extends StatelessWidget {

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
            child: ListView(shrinkWrap: true, children: <Widget>[
                Card(
                color: Colors.lightBlue[100],
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 40.0,
                        bottom: 8.0,
                        left: 8.0,
                      ),
                      child: new ListTile(
                        // leading: new Image.network(snapshot.data.carUrl,
                        //     height: 100, width: 100),
                        leading: new Container(
                          width: 110.0,
                          height: 90.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new AssetImage('images/gt500.jpg')),
                          ),
                        ),
                        title: Text('2008 Shelby GT500'),
                        subtitle: Text('5.4L V8 500HP 480 ft/lb Torque'),
                      ),
                    ),
                    ButtonTheme.bar(
                      // make buttons use the appropriate styles for cards
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('See more info'),
                            onPressed: () {/* ... */},
                          ),
                          FlatButton(
                            child: const Text('Delete'),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Card(
              //   color: Colors.lightBlue[100],
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min,
              //     children: <Widget>[
              //       Padding(
              //         padding: EdgeInsets.only(
              //           top: 40.0,
              //           bottom: 8.0,
              //           left: 8.0,
              //         ),
              //         child: new ListTile(
              //           // leading: new Image.network(snapshot.data.carUrl,
              //           //     height: 100, width: 100),
              //           leading: new Container(
              //             width: 110.0,
              //             height: 90.0,
              //             decoration: new BoxDecoration(
              //               shape: BoxShape.circle,
              //               image: new DecorationImage(
              //                   fit: BoxFit.fill,
              //                   image: new AssetImage('images/v6stang.jpg')),
              //             ),
              //           ),
              //           title: Text('2005 Ford Mustang'),
              //           subtitle: Text('4.0L V6 210HP 240 ft/lb Torque'),
              //         ),
              //       ),
              //       ButtonTheme.bar(
              //         // make buttons use the appropriate styles for cards
              //         child: ButtonBar(
              //           children: <Widget>[
              //             FlatButton(
              //               child: const Text('See more info'),
              //               onPressed: () {},
              //             ),
              //             FlatButton(
              //               child: const Text('Delete'),
              //               onPressed: () {/* ... */},
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Card(
                color: Colors.lightBlue[100],
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 40.0,
                        bottom: 8.0,
                        left: 8.0,
                      ),
                      child: new ListTile(
                        // leading: new Image.network(snapshot.data.carUrl,
                        //     height: 100, width: 100),
                        leading: new Container(
                          width: 110.0,
                          height: 90.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new AssetImage('images/s600.png')),
                          ),
                        ),
                        title: Text('1995 Mercedes S600'),
                        subtitle: Text('6L V12 389HP 420 ft/lb Torque'),
                      ),
                    ),
                    ButtonTheme.bar(
                      // make buttons use the appropriate styles for cards
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('See more info'),
                            onPressed: () {/* ... */},
                          ),
                          FlatButton(
                            child: const Text('Delete'),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                  Navigator.pushNamed(context, '/newcar');
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
