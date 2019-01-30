import 'myGarage.dart';
import 'login.dart';
import 'info.dart';
import 'newCarForm.dart';
import 'noVette.dart';

final routes = {
  '/': (context) => new MyGarage(cars: fetchCars()),
  '/login': (context) => new LoginPage(),
  '/info': (context) => new Info(),
  '/newcar': (context) => new CarForm(),
  '/novette': (context) => new NoVette(),
};