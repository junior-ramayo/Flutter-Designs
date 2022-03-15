import 'package:flutter/material.dart';

 class GridVieWidget extends StatelessWidget {

   List<String> images = [  
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F70%2F59%2F8d%2F70598da3b2328f91504104408b25191e.jpg&f=1&nofb=1',
    'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwallup.net%2Fwp-content%2Fuploads%2F2016%2F01%2F315628-landscape-nature-waterfall-canyon-river-dark-clouds-Iceland.jpg&f=1&nofb=1',  
    'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwallup.net%2Fwp-content%2Fuploads%2F2016%2F01%2F315628-landscape-nature-waterfall-canyon-river-dark-clouds-Iceland.jpg&f=1&nofb=1',  
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.freeimages.com%2Fimages%2Flarge-previews%2F6cc%2Ficeland-landscapes-3-1512232.jpg&f=1&nofb=1'  
  ];

    GridVieWidget({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return GridView.builder(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    physics: const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
    shrinkWrap: true,
    itemCount: images.length,  
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(  
     crossAxisCount: 2,
     crossAxisSpacing: 15.0,
     mainAxisSpacing: 20.0, 
    ),
    itemBuilder: (BuildContext context, int index){  
     return smallCard(images[index]);//Image.network(images[index], fit: BoxFit.cover,);  
    },  
   );
   }

   Widget smallCard(String imagen){
    return Container(
    padding: const EdgeInsets.all(7.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
        fit: BoxFit.cover,
         image: NetworkImage(
          imagen,
        )
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: const Text(
          'Iceland',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      
     ],
    ),
   );
  }
 }