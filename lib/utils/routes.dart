import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/dashboard.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/registration.dart';
import 'package:get/get.dart';

class Routes{
  static var routes = [
   //GetPage(name: "/", page: () =>const Login()),
   GetPage(name: "/home", page: () =>Home()),
   GetPage(name: "/dashboard", page: () =>Dashboard()),
   GetPage(name: "/registration", page: () =>Registration()),
  ];
}