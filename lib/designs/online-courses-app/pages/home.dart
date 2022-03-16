import 'package:flutter/material.dart';
import 'package:flutter_designs/designs/online-courses-app/widgets/card-recomended.dart';
import 'package:flutter_designs/designs/online-courses-app/widgets/vertical-scroll.dart';



 class HomeCourses extends StatelessWidget {
   const HomeCourses({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
   return Scaffold(
    backgroundColor: const Color(0xff29274F),
    body: SafeArea(
     child: SingleChildScrollView(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          _header(),

          //  Scroll Horizontal.
          Container(
           margin: const EdgeInsets.symmetric(vertical: 15),
           height: size.height * 0.423,
           width: double.infinity,
           child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index){
             return const CardRecomended();
            },
           ),
          ),
          
          _subTitle(),

          VerticalScroll(),

        ],
      ), 
     )
    ),
   );
  }

  Widget _header(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
             'Online',
             style: TextStyle(
               color: Colors.white,
               fontSize: 40.0,
               fontWeight: FontWeight.bold
             ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
             'Master Class',
             style: TextStyle(
               color: Colors.white,
               fontSize: 40.0,
               fontWeight: FontWeight.bold
             ),
            ),
          ),
      ],
    );
  }

  Widget _subTitle(){
    return Container(
      margin: const EdgeInsets.only(left: 20.0, top: 20, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text(
            'Free Online Class',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            'From over 80 lectures',
            style: TextStyle(
              color: Colors.grey[600]!,
            ),
          ),
        ],
      ),
    );
  }


 }