import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTop1 extends StatelessWidget {
  const MyTop1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,

      width: double.infinity,
      //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')))),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back',
                      style: TextStyle(color: Colors.black38),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Ronald Richards',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 189, 170, 153),
                radius: 20,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.notifications),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
