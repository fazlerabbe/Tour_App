import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../modelClass/mymodel.dart';
import '../traveldetailspage/traveldetails.dart';

class MyTravelInfo extends StatefulWidget {
  const MyTravelInfo({super.key});

  @override
  State<MyTravelInfo> createState() => _MyTravelInfoState();
}

class _MyTravelInfoState extends State<MyTravelInfo> {
  final travelList = Travel.travelInfo();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.0),
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: travelList.length,
        itemBuilder: (context, index) {
          var travel = travelList[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyTravelDetails(travelList[index])),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 4,
              margin: const EdgeInsets.all(10),
              //color: Colors.amber,
              child: SizedBox(
                  width: 250,
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.network(
                          travel.img,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          travel.name,
                          style: TextStyle(fontSize: 20),
                        ),
                        trailing: const Text(
                          '\$50',
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(travel.location),
                      ),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
