import 'routing.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Cars> fetchCars() async {
  final response =
      await http.get('http://localhost:3001/cars/1');

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

void main() => runApp(MyApp(cars: fetchCars()));

class MyApp extends StatelessWidget {
  final Future<Cars> cars;

  MyApp({Key key, this.cars}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // final title = 'MyGarage';

    return new MaterialApp(
      initialRoute: '/login',
      routes: routes,
    );
  }
}
