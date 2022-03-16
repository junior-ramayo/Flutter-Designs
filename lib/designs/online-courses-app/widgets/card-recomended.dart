import 'package:flutter/material.dart';
import 'package:flutter_designs/designs/online-courses-app/pages/details.dart';

 class CardRecomended extends StatelessWidget {
   const CardRecomended({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
   return GestureDetector(
     onTap: (){
      Navigator.push(
       context,
       MaterialPageRoute(
        builder: (contex) => DetailsCourse()
       )
      );
     },
     child: Container(
      width: size.width * 0.68,
      padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(22),
       gradient: const LinearGradient(
        colors: [
         Color(0xFF9288E4),
         Color(0xFF534EA7)
        ],
       ),
      ),
      child: Stack(
       children: [
                
        Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Container(
           margin: const EdgeInsets.symmetric(vertical: 15),
           padding: const EdgeInsets.all(10),
           decoration: BoxDecoration(
            color: const Color(0xFFAFA8EE),
            borderRadius: BorderRadius.circular(15)
           ),
           child: const Text(
            'Recomended',
            style: TextStyle(
             color: Colors.white,
             letterSpacing: 1.0,
             fontWeight: FontWeight.bold
            ),
           ),
          ),
   
          Container(
           margin: const EdgeInsets.only(right: 20),
           child: const Text(
            'UI/UX Designer Beginner',
            style: TextStyle(
             color: Colors.white,
             fontWeight: FontWeight.bold,
             fontSize: 25
            ),
           ),
          ),
         ],
        ),
   
   
        Positioned(
         right: 0,
         bottom: 0,
         child: Image.asset(
          'assets/images/img_saly10.png',
          scale: 2.0,
         )
        )
   
   
       ],
      ),
     ),
   );
   }
 }