import 'package:flutter/material.dart';

class InputSearch extends StatelessWidget {
  const InputSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: const EdgeInsets.only(left: 40, right: 40, top: 50, bottom: 20),
    child: TextField(
     cursorColor: Colors.black,
     decoration: InputDecoration(
      suffixIcon: const Icon(Icons.search),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: 'Que estas buscando ?',
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
       borderSide: BorderSide.none,
       borderRadius: BorderRadius.circular(50)
      ),
     ),
    ),
   );
  }
}