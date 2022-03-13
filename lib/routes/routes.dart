import 'package:flutter/material.dart';
import 'package:flutter_designs/home/home_page.dart';

class RoutesApp {
  getRoutes(){
   return {
    'home_main': (BuildContext context) => const HomePage(),
   };
  }
 }