import 'package:flutter/material.dart';
import 'package:flutter_designs/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Material App',
     initialRoute: 'home_main',
     routes: RoutesApp().getRoutes(),
    );
  }
}