import 'package:flutter/material.dart';

class VerticalScroll extends StatelessWidget {

  List<String> courses = ['Flutter developer', 'Full-Stack JavaScript', 'Java Developer', 'Front-end Developer', 'Back-end Developer'];

  VerticalScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    children: List.generate(
     courses.length, 
     (index) {
      return Container(
       margin: const EdgeInsets.only(left: 30, right: 30, top: 25),
       width: double.infinity,
       child: DecoratedBox(
         decoration: BoxDecoration(
           color: const Color(0xFF3E3A6D),
           borderRadius: BorderRadius.circular(15)
         ),
         child: Row(
           children: [


             Container(
               margin: const EdgeInsets.only(right: 20),
               child: Transform.translate(
                 offset: const Offset(25, -39),
                 child: Image.asset(
                   'assets/pngs/img_saly24.png',
                   height: 100
                 ),
               ),
             ),


             Expanded(
               child: Container(
                 margin: const EdgeInsets.only(left: 14),
                 height: 100,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       courses[index],
                       style: const TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 17
                       ),
                     ),
                     const SizedBox(height: 10),
                     Text(
                       '8 hours',
                       style: TextStyle(
                         color: Colors.grey[600],
                         fontSize: 12
                       ),
                     ),
                     const SizedBox(height: 5),
                     Row(
                       children: List.generate(
                        5, 
                        (index) => const Icon(Icons.star, color: Colors.orange, size: 17),
                       )
                     ),
                   ],
                 ),
               ),
             ),


             Transform.translate(
              offset: const Offset(13, 0),
               child: Container(
                 padding: const EdgeInsets.all(6),
                 decoration: const BoxDecoration(
                   color: Color(0xFFEB53A2),
                   shape: BoxShape.circle
                 ),
                 child: const Icon(
                   Icons.play_arrow_rounded,
                   color: Colors.white,
                 ),
               ),
             )


           ],
         ),
       )
      );  
     }
    ),
   );
  }
}