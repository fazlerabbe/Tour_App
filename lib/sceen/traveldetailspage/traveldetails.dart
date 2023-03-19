import 'package:flutter/material.dart';

import '../modelClass/mymodel.dart';
import 'aftertoprow.dart';
import 'bottompart.dart';

class MyTravelDetails extends StatelessWidget {
  Travel mymodel;
  MyTravelDetails(this.mymodel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Back',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 420,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48), // Image radius
                      child: Image.network(mymodel.img, fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                    right: 10,
                    bottom: 70,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1),
                          height: 40,
                          width: 40,
                          //color: Colors.red,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: NetworkImage(
                                'https://images.pexels.com/photos/414122/pexels-photo-414122.jpeg?auto=compress&cs=tinysrgb&w=1600',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1),
                          child: Container(
                            padding: EdgeInsets.all(.8),
                            height: 40,
                            width: 40,
                            //color: Colors.red,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                image: NetworkImage(
                                  'https://images.pexels.com/photos/1539700/pexels-photo-1539700.jpeg?auto=compress&cs=tinysrgb&w=1600',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(1),
                          height: 40,
                          width: 40,
                          //color: Colors.red,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: NetworkImage(
                                'https://images.pexels.com/photos/1287089/pexels-photo-1287089.jpeg?auto=compress&cs=tinysrgb&w=1600',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1),
                          child: Container(
                            padding: EdgeInsets.all(.8),
                            // height: 50,
                            // width: 50,
                            //color: Colors.red,
                            child: Stack(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(
                                      image: NetworkImage(
                                        'https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&w=1600',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Text(
                                    '+16',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            TopRowList(),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Container(
                height: 2,
                width: double.infinity,
                color: Color.fromARGB(255, 235, 230, 230),
              ),
            ),
            MyBottonPart(),
          ],
        ),
      ),
    );
  }
}
