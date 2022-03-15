import 'package:flutter/material.dart';


class CardWidget extends StatelessWidget {

  final String img = 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.wallpapersden.com%2Fimage%2Fdownload%2Fbeautiful-iceland-landscape_bGdrZ2eUmZqaraWkpJRobWllrWdma2U.jpg&f=1&nofb=1';
  
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15)
    ),
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(
         image: NetworkImage(img)
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: const Text(
          'Iceland',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Text(
              'Roadtrip',
              style: TextStyle(
                color: Colors.grey
              )
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Text(
              '10d/11n',
              style: TextStyle(
                color: Colors.grey
              )
            ),
          ),
          const Expanded(
            child: Text(
              '1.290mi',
              style: TextStyle(
                color: Colors.grey
              )
            ),
          ),
          Container(
           padding: const EdgeInsets.all(6),
           decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xff77858C)
            ),
            borderRadius: BorderRadius.circular(50)
           ),
           child: const Icon(Icons.favorite, size: 20, color: Color(0xff77858C)), 
          )
        ],
      ),
     ],
    ),
   );
  }
}