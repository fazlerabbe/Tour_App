import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AfterMyTextField extends StatelessWidget {
  const AfterMyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: double.infinity,
        // color: Colors.red,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
            itemCount: 20,
            itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 210, 93, 30),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2019/12/28/14/00/chromehill-4724725__340.jpg')),

                              //color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                        Text(
                          'Mountain',
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                ))));

    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    // Container(
    //   height: 70,
    //   width: 170,
    //   decoration: BoxDecoration(
    //       color: Color.fromARGB(255, 210, 93, 30),
    //       borderRadius: BorderRadius.all(Radius.circular(20))),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       Container(
    //         height: 50,
    //         width: 70,
    //         decoration: BoxDecoration(
    //             image: DecorationImage(
    //                 image: NetworkImage(
    //                     'https://cdn.pixabay.com/photo/2019/12/28/14/00/chromehill-4724725__340.jpg')),

    //             //color: Colors.white,
    //             borderRadius: BorderRadius.all(Radius.circular(15))),
    //       ),
    //       Text(
    //         'Mountain',
    //         style: TextStyle(color: Colors.white),
    //       )
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         width: 10.0,
    //       ),
    //       Container(
    //         height: 70,
    //         width: 120,
    //         color: Colors.red,
    //       ),
    //       SizedBox(
    //         width: 10.0,
    //       ),
    //       Container(
    //         height: 70,
    //         width: 120,
    //         color: Colors.green,
    //       ),
    //       SizedBox(
    //         width: 10.0,
    //       ),
    //       Container(
    //         height: 70,
    //         width: 120,
    //         color: Colors.amber,
    //       ),
    //       SizedBox(
    //         width: 10.0,
    //       ),
    //       Container(
    //         height: 70,
    //         width: 120,
    //         color: Colors.red,
    //       ),
    //     ],
    //   ),
    // );
  }
}
