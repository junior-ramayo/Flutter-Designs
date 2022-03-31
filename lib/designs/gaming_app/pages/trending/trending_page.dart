import 'package:flutter/material.dart';
import 'package:flutter_designs/designs/gaming_app/models/games.dart';
import 'package:flutter_designs/designs/gaming_app/widgets/avatar.dart';
import 'package:flutter_designs/designs/gaming_app/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';


 class TrendingPage extends StatelessWidget {
   const TrendingPage({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [

       SafeArea(
            child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [

                CustomButton(
                 iconData: Icons.arrow_back,
                 label: 'Back',
                 onPressed: (){
                   Navigator.of(context).pop();
                 }
                ),

                const UserAvatar(),

               ],
             ),
            ),
           ),
      
       title(),

       SizedBox(
         height: MediaQuery.of(context).size.height * .35,
         child: horizontalList(context),
       ),
  
       Expanded(
        child: playButton(VideoGame.mainGame)
       )

     ],
    ),
   );
  }

  Widget title(){
    return const Padding(
      padding: EdgeInsets.only(left: 30.0, top: 25),
      child: Text(
        'Trending 🔥',
        style: TextStyle(
          fontSize: 42,
          color: Colors.black
        ),
      ),
    );
  }


  Widget horizontalList(BuildContext context){
   return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: VideoGame.videoGames.length,
    itemBuilder: (context, index){
     final videoGame = VideoGame.videoGames[index];
     return Container(
      width: 180,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.06), 
            blurRadius: 15
          )
        ]
      ),
      child: Column(
       children: [
         Expanded(
           flex: 2,
           child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            child: Image.asset(
             videoGame.srcImage!,
             fit: BoxFit.cover,
            ),
           ),
         ),
         const SizedBox(height: 15),
         Expanded(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red[100],
                  ),
                  child: Text(
                    videoGame.genre!,
                    style: GoogleFonts.poppins(
                        color: Colors.red[400],
                        fontSize: 12,
                        fontWeight: FontWeight.w500,),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      videoGame.title!,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ),
                ),
            ],
          ),
         ),
       ],
      ),
     );
    },
   );
  }

  Widget playButton(VideoGame game){
    final firstTitleWord = game.title!.split(' ').first;
    final titleWithoutFirstWord = game.title!.replaceRange(0, firstTitleWord.length, '').trim();
   return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration:  BoxDecoration(
     color: Colors.blueGrey[900]!,
     borderRadius: const BorderRadius.all(Radius.circular(30))
    ),
    child: Column(
     children: [
      Expanded(
       child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
         game.srcImage!,
         fit: BoxFit.cover,
        ),
       ),
      ),
      const SizedBox(height: 10),
      Row(
       children: [
        CircleAvatar(
         radius: 25,
         backgroundImage: AssetImage(game.srcImage!),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
             TextSpan(
              text: firstTitleWord, 
              children: [
               TextSpan(
                text: ' $titleWithoutFirstWord',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w300),
               ),
              ],
             ),
             style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.white
             ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: Text(
                game.genre!,
                style: GoogleFonts.poppins(
                 fontWeight: FontWeight.w600,
                 fontSize: 14,
                 color: Colors.white
                ),  
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              colors: [
              Colors.orange[700]!,
              Colors.deepOrange[700]!,
              ]
            )
          ),
          child: const Icon(Icons.play_arrow, color: Colors.white),
        ),
       ],
      ),
     ],
    ),
   );
  }

 }