import 'package:flutter/material.dart';
import 'package:flutter_designs/designs/Destinations/widgets/card.dart';
import 'package:flutter_designs/designs/Destinations/widgets/gridview.dart';
import 'package:flutter_designs/designs/Destinations/widgets/header.dart';
import 'package:flutter_designs/designs/Destinations/widgets/input.dart';
import 'package:flutter_designs/designs/Destinations/widgets/painter_home.dart';


class Destinations extends StatelessWidget {  

  const Destinations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: const Color(0xffEDF1F5),
    body: Stack(
     children: [
      const HeaderHome(),
      const HeaderHomeNaranja(),
      const HeaderHomeMorado(),
      SingleChildScrollView(
       padding: const EdgeInsets.only(top: 0),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Header(),
          const InputSearch(),
          const CardWidget(),
          GridVieWidget()
        ],
       ),
      ),
     ],
    ),
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: const Color(0xff282943),
      onTap: ( index ) { 
        if( index == 1 ) Navigator.pushNamed(context, 'detalle');
      },
      items: const [
        BottomNavigationBarItem(
         label: 'Home',
         icon: Icon(Icons.home)
        ),
        BottomNavigationBarItem(
         label: 'Explore',
         icon: Icon(Icons.explore)
        ),
      ],
    ),
   );
  }


  

  

  

}