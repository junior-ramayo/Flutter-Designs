import 'package:flutter/material.dart';
import 'package:flutter_designs/designs/Destinations/home_destinations.dart';
import 'package:flutter_designs/designs/gaming_app/pages/home/home_gaming.dart';
import 'package:flutter_designs/designs/online-courses-app/pages/home.dart';
import 'package:flutter_designs/home/home_page.dart';

class RoutesApp {
  getRoutes(){
   return {
    'home_main': (BuildContext context) => const HomePage(),
    'home_destinations': (BuildContext context) => const Destinations(),
    'home_courses': (BuildContext context) => const HomeCourses(),
    'home_gaming': (BuildContext context) => HomeGaming()
   };
  }
 }