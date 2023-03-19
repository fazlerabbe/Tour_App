import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
            autocorrect: true,
            decoration: InputDecoration(
              hintText: 'Discover a City',
              prefixIcon: Icon(Icons.search,color: Color.fromARGB(255, 186, 148, 10),),
               suffixIcon:Icon(Icons.menu),
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white70,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.white, width: 2),
              ),
              // focusedBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
              //   borderSide: BorderSide(color: Colors.green, width: 2),
              // ),
            )));
  }
}
