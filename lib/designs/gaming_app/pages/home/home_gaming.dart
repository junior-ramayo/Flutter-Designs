import 'package:flutter/material.dart';
import 'package:flutter_designs/designs/gaming_app/models/games.dart';
import 'package:flutter_designs/designs/gaming_app/pages/home/widgets/card_gaming.dart';
import 'package:flutter_designs/designs/gaming_app/pages/trending/trending_page.dart';
import 'package:flutter_designs/designs/gaming_app/widgets/avatar.dart';
import 'package:flutter_designs/designs/gaming_app/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';


 class HomeGaming extends StatefulWidget {
   HomeGaming({Key? key}) : super(key: key);
 
   @override
   State<HomeGaming> createState() => _HomeGamingState();
 }
 
 class _HomeGamingState extends State<HomeGaming> {

   PageController? _controller;
   int? _index;
   double? _page;

   @override
  void initState() {
    _controller = PageController(viewportFraction: .7, initialPage: 1);
    _index = 1;
    _page = 1.0;
    _controller!.addListener(_pageListener);
    super.initState();
  }

   @override
  void dispose() {
    _controller!.removeListener(_pageListener);
    super.dispose();
  }  

   @override
   Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      children:  [

       SafeArea(
            child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [

                CustomButton(
                 iconData: Icons.search, 
                 label: 'Search',
                 onPressed: (){
                   goTrendingPage();
                 }
                ),

                const UserAvatar(),

               ],
             ),
            ),
           ),


       title(),

       const SizedBox(height: 15),

       pageview(),

      ],
     )
    );
   }

   Widget title(){
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text(
               'Orix',
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 50,
                 fontWeight: FontWeight.bold
               )
             ),
             Text(
               'Gaming',
               style: TextStyle(
                 color: Colors.black45,
                 fontSize: size.height * 0.08,
               )
             ),
           ],
         ),
       
        Transform.rotate(
         angle: 6.0,
         child: Image.asset(
           'assets/pngs/orix_cube.png',
           height: 120,
         ),
        )

       ],
      ),
    );
   }
   

   Widget pageview(){
    return SizedBox(
     height: MediaQuery.of(context).size.height * 0.48,
     child: PageView.builder(
      itemCount: VideoGame.videoGames.length,
      controller: _controller,
      onPageChanged: (value){
        setState(() {
          _index = value;
        });
      },
      itemBuilder: (context, index){
       final videoGame = VideoGame.videoGames[index];
       return Padding(
         padding: const EdgeInsets.symmetric(horizontal: 12.0),
         child: CardGaming(
           videoGame: videoGame,
           haveFocus: index == _index,
           factorChange: (_page! - index).abs(),
         ),
       );
      }
     ),
    );
   }


  void _pageListener() {
    setState(() {
      _page = _controller!.page;
    });
  }

  goTrendingPage(){
    Navigator.push(
     context, 
     MaterialPageRoute(builder: (context) => const TrendingPage())
    );
  }


  

 }

