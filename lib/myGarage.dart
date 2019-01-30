import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Cars> fetchCars() async {
  final response = await http.get('http://localhost:3001/cars/1');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    return Cars.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load cars');
  }
}

class Cars {
  final int id;
  final int vin;
  final int year;
  final String make;
  final String model;
  final String carUrl;

  Cars({this.id, this.vin, this.year, this.make, this.model, this.carUrl});

  factory Cars.fromJson(Map<String, dynamic> json) {
    return Cars(
      id: json["id"],
      vin: json["vin"],
      year: json["year"],
      make: json["make"],
      model: json["model"],
      carUrl: json["car_img_url"],
    );
  }
}

class MyGarage extends StatelessWidget {
  final Future<Cars> cars;

  MyGarage({Key key, this.cars}) : super(key: key);

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
              FutureBuilder<Cars>(
                future: cars,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    // return Text(snapshot.data.make);
                    return Card(
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
                                      image: new NetworkImage(
                                          snapshot.data.carUrl)),
                                ),
                              ),
                              title: Text('2008 ' +
                                  (snapshot.data.make) +
                                  ' ' +
                                  (snapshot.data.model)),
                              subtitle: Text('5.4L V8 500hp 480 ft/lb Torque'),
                            ),
                          ),
                          ButtonTheme.bar(
                            // make buttons use the appropriate styles for cards
                            child: ButtonBar(
                              children: <Widget>[
                                FlatButton(
                                  child: const Text('See more info'),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/info');
                                  },
                                ),
                                FlatButton(
                                  child: const Text('Delete'),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  return CircularProgressIndicator();
                },
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
                                image: new AssetImage('images/vette2.jpg')),
                          ),
                        ),
                        title: Text('1985 Chevrolet Corvette'),
                        subtitle: Text('5.7L V8 230HP 330 ft/lb Torque'),
                      ),
                    ),
                    ButtonTheme.bar(
                      // make buttons use the appropriate styles for cards
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('See more info'),
                            onPressed: () {
                              Navigator.pushNamed(context, '/info');
                            },
                          ),
                          FlatButton(
                            child: const Text('Delete'),
                            onPressed: () {
                              Navigator.pushNamed(context, '/novette');
                            },
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
              //                   image: new AssetImage('images/4runner.jpg')),
              //             ),
              //           ),
              //           title: Text('2016 4Runner TRD Pro'),
              //           subtitle: Text('4.0L V6 270HP 278 ft/lb Torque'),
              //         ),
              //       ),
              //       ButtonTheme.bar(
              //         // make buttons use the appropriate styles for cards
              //         child: ButtonBar(
              //           children: <Widget>[
              //             FlatButton(
              //               child: const Text('See more info'),
              //               onPressed: () {/* ... */},
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
              //                   image: new AssetImage('images/summit.jpg')),
              //             ),
              //           ),
              //           title: Text('2016 Jeep Grand Cherokee Summit'),
              //           subtitle: Text('5.7L V8 360HP 390 ft/lb Torque'),
              //         ),
              //       ),
              //       ButtonTheme.bar(
              //         // make buttons use the appropriate styles for cards
              //         child: ButtonBar(
              //           children: <Widget>[
              //             FlatButton(
              //               child: const Text('See more info'),
              //               onPressed: () {/* ... */},
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
