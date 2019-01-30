import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Cars> fetchCars() async {
  final response = await http.get('http://localhost:3001/cars/1');

  if (response.statusCode == 200) {
    return Cars.fromJson(json.decode(response.body));
  } else {
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
                              title: Text(
                                '2008 ' +
                                    (snapshot.data.make) +
                                    ' ' +
                                    (snapshot.data.model),
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                              subtitle: Text(
                                '5.4L V8 500hp 480 ft/lb Torque',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          ButtonTheme.bar(
                            child: ButtonBar(
                              children: <Widget>[
                                FlatButton(
                                  child: const Text(
                                    'See more info',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: const Color(0xFF30405A),
                                    ),
                                  ),
                                  color: Colors.deepOrange,
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/info');
                                  },
                                ),
                                FlatButton(
                                  child: const Text(
                                    'Delete',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: const Color(0xFF30405A),
                                    ),
                                  ),
                                  color: Colors.deepOrange,
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
                        title: Text(
                          '1995 Mercedes S600',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          '6L V12 389HP 420 ft/lb Torque',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text(
                              'See more info',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: const Color(0xFF30405A),
                              ),
                            ),
                            color: Colors.deepOrange,
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: const Text(
                              'Delete',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: const Color(0xFF30405A),
                              ),
                            ),
                            color: Colors.deepOrange,
                            onPressed: () {},
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
                        title: Text(
                          '1985 Chevrolet Corvette',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          '5.7L V8 230HP 330 ft/lb Torque',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text(
                              'See more info',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: const Color(0xFF30405A),
                              ),
                            ),
                            color: Colors.deepOrange,
                            onPressed: () {
                              Navigator.pushNamed(context, '/info');
                            },
                          ),
                          FlatButton(
                            child: const Text(
                              'Delete',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: const Color(0xFF30405A),
                              ),
                            ),
                            color: Colors.deepOrange,
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
