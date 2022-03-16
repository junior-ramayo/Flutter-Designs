import 'package:flutter/material.dart';

 class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: _appBar(),
    body: Padding(
     padding: const EdgeInsets.only(left: 15,right: 15, top: 70),
     child: ListView(
      children: [
      
       _card('home_destinations', 'Destinations'),

       _card('home_courses', 'Online Courses App'),

      ],
     ),
    )
   );
  }

  Widget _card(String route, String title){
   return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, route);
    },
    child: Container(
     padding: const EdgeInsets.symmetric(vertical: 25),
     margin: const EdgeInsets.symmetric(vertical: 15),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
       gradient: const LinearGradient(
	      colors: [Colors.red, Colors.blue],
	      begin: FractionalOffset.centerLeft,
	      end: FractionalOffset.centerRight,
	     ),
     ), 
     child: Center(
       child: Text(
         title,
         style: const TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.bold,
           letterSpacing: 1.0,
           fontSize: 17
         ),
       ),
     )
    ),
   );
  }

  AppBar _appBar(){
   return AppBar(
    title: const Text('Flutter Designs'),
    centerTitle: true,
    flexibleSpace: Container(
     decoration: const BoxDecoration(
      gradient: LinearGradient(
       begin: Alignment.centerLeft,
       end: Alignment.centerRight,
       colors: [Colors.blue, Colors.purple]
      )
     ),        
    ),
   );
  }

}