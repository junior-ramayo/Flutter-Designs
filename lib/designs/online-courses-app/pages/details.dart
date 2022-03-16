import 'package:flutter/material.dart';

 class DetailsCourse extends StatelessWidget {
  
  List<String> topics = ['Introduction design graphic', 'fundamental of design', 'Layout design'];
  
  DetailsCourse({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
   return Scaffold(
    backgroundColor: const Color(0xff29274F),
    body: SafeArea(
     child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      children: [
          
       header(size),

       starts(),

       title(),

       members(),

       const SizedBox(height: 20),

       cards(),
          
      ],
     ),
    ),
   );
  }

  Widget header(Size size){
   return Container(
    height: size.height * 0.40,
    width: double.infinity,
    decoration: const BoxDecoration(
     gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(1, 0.0),
      colors: <Color>[
       Color(0xFFF4C465),
       Color(0xFFC63956),
      ],
     ),
     borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(25),
      bottomRight: Radius.circular(25)
     ),
     image: DecorationImage(
      alignment: Alignment.bottomRight,
      scale: 1.2,
      image: AssetImage(
       'assets/images/img_saly36_detail.png',
      ),
     ),
    ),
   );
  }

  Widget starts(){
   return Container(
    margin: const EdgeInsets.only(left: 20, top: 25),
    child: Row(
      children: const [
        Icon(Icons.star, color: Colors.orange),
        Icon(Icons.star, color: Colors.orange),
        Icon(Icons.star, color: Colors.orange),
        Icon(Icons.star, color: Colors.orange),
        Icon(Icons.star, color: Colors.orange),
      ],
    )
   );
  }

  Widget title(){
   return Container(
    margin: const EdgeInsets.only(left: 20, top: 10),
    child: const Text(
     'Graphic Design Master',
     style: TextStyle(
       color: Colors.white,
       fontWeight: FontWeight.bold,
       fontSize: 25
     ),
    ),
   );
  }

  Widget members(){
   return Container(
    margin: const EdgeInsets.only(left: 20, top: 15, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        Row(
          children: [
            SizedBox(
              width: 112.5,
              child: Stack(
                children: [

                  Positioned(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/img_user1.png')
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    left: 22,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/img_user1.png')
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                   left: 45,
                   child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.white,
                     image: DecorationImage(
                      image: AssetImage(
                       'assets/images/img_user3.png'
                      ),
                     ),
                    ),
                   ),
                  ),

                  Positioned(
                   left: 67.5,
                   child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.white,
                     image: DecorationImage(
                      image: AssetImage(
                       'assets/images/img_user4.png'),
                     ),
                    ),
                   ),
                  ),

                ],
              ),
            ),
          ],
        ),
      
        Text(
         ' +28K Members',
         style: TextStyle(
          color: Colors.grey[600]!,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.0,
          fontSize: 17
         ),
        ),

        Container(
         padding: const EdgeInsets.all(10),
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF353567)
         ),
         child: const Icon(
          Icons.thumb_up_sharp,
          color: Colors.white
         ),
        ),


      ],
    )
   );
  }

  Widget cards(){
   return Container(
     margin: const EdgeInsets.only(top: 20),
     child: Column(
      children: List.generate(
       topics.length, 
       (index){
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10, top: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFDB61A1),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Stack(
                 alignment: Alignment.center ,
                 children: [
                   Transform.translate(
                    offset: const Offset(0, -10),
                    child: Image.asset(
                     'assets/images/img_saly20.png',
                     height: 85,
                    ),
                   ),
                 ],
                ),
              ),
                  
              Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Text(
                 topics[index],
                 style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                 ),
                ),
                const SizedBox(height: 10),
                Text(
                  '16 minutes',
                  style: TextStyle(
                    color: Colors.grey[600]!,
                    fontSize: 14
                  ),
                ),
               ],
              ),
          
            ],
          ),
        );
       }
      )
     ),
   );
  }


 }