import 'package:flutter/material.dart';

class MyBottonPart extends StatelessWidget {
  const MyBottonPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Mount Bromo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [Icon(Icons.star), Text('4.7(9k review)')],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.place),
                Text(
                  'Itaila',
                )
              ],
            ),
            Row(
              children: [Icon(Icons.place_rounded), Text('Map Direction')],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            'Description',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
          style: TextStyle(color: Color.fromARGB(255, 151, 145, 145)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(1),
                height: 60,
                width: 210,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFC05E2B),
                      width: 2,
                    )),
                child: Center(child: Text('\$890/person')),
              ),
              Container(
                padding: EdgeInsets.all(1),
                height: 60,
                width: 210,
                decoration: BoxDecoration(
                    color: Color(0xFFC05E2B),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFC05E2B),
                      width: 2,
                    )),
                child: Center(
                    child: Text(
                  'Book Now',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
