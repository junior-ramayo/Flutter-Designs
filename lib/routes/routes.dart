import 'package:flutter/material.dart';
import 'package:flutter_designs/designs/Destinations/home_destinations.dart';
import 'package:flutter_designs/home/home_page.dart';

class RoutesApp {
  getRoutes(){
   return {
    'home_main': (BuildContext context) => const HomePage(),
    'home_destinations': (BuildContext context) => const Destinations()
   };
  }
 }