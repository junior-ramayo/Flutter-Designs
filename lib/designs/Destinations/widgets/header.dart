import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height *  0.11),
      padding: const EdgeInsets.only(left: 15, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          dropDown(size),
          menuIcon(size)
        ],
      ),
    );
  }

  Widget menuIcon(Size size){
   return IconButton(
    onPressed: (){}, 
    icon: const Icon(
     Icons.menu,
     size: 38,
     color: Colors.white,
    )
   );
  }

  Widget dropDown(Size size){
   return Container(
    decoration: BoxDecoration(
     color: const Color(0xff2E2F44),
     borderRadius: BorderRadius.circular(20.0)
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.rotate(
         angle: -12.0,
         child: const IconButton(
           icon: Icon(
             Icons.navigation, 
             color: Colors.white, 
             size: 18
           ), 
          onPressed: null
         ),
        ),
        const Text(
         'San Francisco',
         style: TextStyle(
           color: Colors.white, 
           fontSize: 17
         )
        ),
        const IconButton(
         icon: Icon(
           Icons.keyboard_arrow_down, 
           color: Colors.white
         ), 
         onPressed: null
        ),
      ],
    ),
   );
  }

}