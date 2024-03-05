import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/screens/dashboard.dart';
import 'package:flutter_application_1/views/screens/home.dart';
import 'package:flutter_application_1/views/screens/login.dart';
import 'package:flutter_application_1/views/screens/registration.dart';
import 'package:get/get.dart';

class Routes{
  static var routes = [
   GetPage(name: "/", page: () =>const Login()),
   GetPage(name: "/home", page: () =>const Home()),
   GetPage(name: "/dashboard", page: () =>const Dashboard()),
   GetPage(name: "/registration", page: () =>const Registration()),
   GetPage(name: "/calculator", page: () => Calculator()),
  ];
}